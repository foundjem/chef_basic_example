#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, ICCLAB
#
# All rights not reserved - Do Redistribute
#

package node["apache"]["package_name"] do
  action :install 
end

service node["apache"]["service_name"] do
  action [:start, :enable]
end

remote_directory "#{node["apache"]["document_root"]}" do
  source "example_page"
end

template "#{node["apache"]["document_root"]}/index.html" do
  source "index.html.erb"
  variables({
    :username => "icclab",
    :password => "hallo welt",
    :url => "http://server.example.com"
  })
end