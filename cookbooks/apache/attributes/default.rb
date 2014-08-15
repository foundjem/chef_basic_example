case node["platform_family"]
when "debian"
  default["apache"]["package_name"] = "apache2"
  default["apache"]["service_name"] = "apache2"
when "rhel"
  default["apache"]["package_name"] = "httpd"
  default["apache"]["service_name"] = "httpd"
end

default["apache"]["document_root"] = "/var/www/html"

default["user_defined_attribute"] = "user_defined_attribute"