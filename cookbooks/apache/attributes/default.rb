case node["platform_family"]
when "debian"
  default["apache"]["package_name"] = "apache2"
  default["apache"]["service_name"] = "apache2"
  default["apache"]["document_root"] = "/var/www"
when "rhel"
  default["apache"]["package_name"] = "httpd"
  default["apache"]["service_name"] = "httpd"
  default["apache"]["document_root"] = "/var/www/html"
end