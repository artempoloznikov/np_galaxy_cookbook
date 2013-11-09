#
# Cookbook Name:: np_titan
#

#rightscale_marker

service "tomcat-core" do
  action :stop
end

service "tomcat-core" do
  action :disable
end
