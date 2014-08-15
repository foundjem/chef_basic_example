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
  mode = "0770"
  owner = "un_folder_owner"
  files_mode = "0440"
  files_owner = "un_files_owner"
end

template "#{node["apache"]["document_root"]}/index.html" do
  source "index.html.erb"
  mode "0644"
  variables({
    :username => "icclab",
    :password => "hallo welt",
    :url => "http://server.example.com"
  })
end