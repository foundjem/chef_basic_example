service node["apache"]["service_name"] do
  action [:stop, :disable]
end

file "#{node["apache"]["document_root"]}/index.html" do
  action :delete
end

directory "#{node["apache"]["document_root"]}" do
  action :delete
  recursive true
end

package node["apache"]["package_name"] do
  action :remove 
end