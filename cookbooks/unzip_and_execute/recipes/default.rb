#
# Cookbook Name:: unzip_and_execute
# Recipe:: default
#
# Copyright 2014, icclab

# All rights not reserved - Do Redistribute
#

cookbook_file "/tmp/example_archive.tar.gz" do
  action :create_if_missing
  source "example_archive.tar.gz"
  mode "0644"
end

cookbook_file "/tmp/bash-script.sh" do
  action :create_if_missing
  source "bash-script.sh"
  mode "0744"
end

execute "run_bash_script" do
  command "/tmp/bash-script.sh"
  not_if { Dir.glob("/tmp/file*").any? }
end