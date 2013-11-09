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

default[:np_galaxy_cookbook][:s3_access_key] = ""
default[:np_galaxy_cookbook][:s3_secret_key] = ""
default[:np_galaxy_cookbook][:s3_bucket_name] = "np-titan-tomcat-install"

default[:np_galaxy_cookbook][:java_instdir] = "/usr/java"

default[:np_galaxy_cookbook][:tomcat][:home] = "/usr/local/tomcat-core"
default[:np_galaxy_cookbook][:tomcat][:tmp] = "/usr/local/tomcat-core/tmp"
default[:np_galaxy_cookbook][:tomcat][:pid_file] = "/usr/local/tomcat-core/tmp/tomcat.pid"
default[:np_galaxy_cookbook][:tomcat][:logs] = "/mnt/ephemeral/tomcat-logs"
default[:np_galaxy_cookbook][:tomcat][:user] = "tomcat"
default[:np_galaxy_cookbook][:tomcat][:group] = "tomcat"
default[:np_galaxy_cookbook][:tomcat][:java_xms] = "256m"
default[:np_galaxy_cookbook][:tomcat][:java_xmx] = "1200m"

default[:np_galaxy_cookbook][:tomcat_xml][:tomcat_port] = "8080"
default[:np_galaxy_cookbook][:tomcat_xml][:tomcat_port] = "8080"


