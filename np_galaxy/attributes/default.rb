#
# Cookbook Name:: app_tomcat
#
# Copyright RightScale, Inc. All rights reserved.
# All access and use subject to the RightScale Terms of Service available at
# http://www.rightscale.com/terms.php and, if applicable, other agreements
# such as a RightScale Master Subscription Agreement.

# List of required apache modules
#default[:app_tomcat][:module_dependencies] = []

# Recommended attributes

default[:np_titan][:s3_access_key] = ""
default[:np_titan][:s3_secret_key] = ""
default[:np_titan][:s3_bucket_name] = "np-titan-tomcat-install"

default[:np_titan][:java_instdir] = "/usr/java"

default[:np_titan][:tomcat][:home] = "/usr/local/tomcat-core"
default[:np_titan][:tomcat][:tmp] = "/usr/local/tomcat-core/tmp"
default[:np_titan][:tomcat][:pid_file] = "/usr/local/tomcat-core/tmp/tomcat.pid"
default[:np_titan][:tomcat][:logs] = "/mnt/ephemeral/tomcat-logs"
default[:np_titan][:tomcat][:user] = "tomcat"
default[:np_titan][:tomcat][:group] = "tomcat"
default[:np_titan][:tomcat][:java_Xms] = "256m"
default[:np_titan][:tomcat][:java_Xmx] = "1200m"


# Calculated attributes
# Defining java alternatives parameter depending on platform.
# case node[:platform]
# when "ubuntu"
#   set[:app_tomcat][:alternatives_cmd] = "update-alternatives --auto java"
# when "centos", "redhat"
#   set[:app_tomcat][:alternatives_cmd] = "alternatives --auto java"
# else
#   raise "Unrecognized distro #{node[:platform]}, exiting "
# end
