#
# Cookbook Name:: np_titan
#

#rightscale_marker

service "jetty-core" do
  action :stop
end

service "jetty-core" do
  action :disable
end
