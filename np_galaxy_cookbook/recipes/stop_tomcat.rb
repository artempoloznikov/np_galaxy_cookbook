#
# Cookbook Name:: np_titan
#

#rightscale_marker

service "tomcat7" do
  action :stop
end

service "tomcat7" do
  action :disable
end
