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

default[:np_galaxy_cookbook][:tomcat][:home] = "/mnt/ephemeral/tomcat7"
default[:np_galaxy_cookbook][:tomcat][:conf] = "/etc/tomcat7"
default[:np_galaxy_cookbook][:tomcat][:tmp] = "/tmp"
default[:np_galaxy_cookbook][:tomcat][:pid_file] = "/var/run/tomcat7.pid"
default[:np_galaxy_cookbook][:tomcat][:logs] = "/mnt/ephemeral/tomcat-logs"
default[:np_galaxy_cookbook][:tomcat][:user] = "tomcat7"
default[:np_galaxy_cookbook][:tomcat][:group] = "tomcat7"
default[:np_galaxy_cookbook][:tomcat][:java_xms] = "256m"
default[:np_galaxy_cookbook][:tomcat][:java_xmx] = "1200m"

default[:np_galaxy_cookbook][:tomcat_xml][:tomcat_port] = "8080"

default[:np_galaxy_cookbook][:tomcat_users_xml][:tomcat_rolename] = "manager-gui"
default[:np_galaxy_cookbook][:tomcat_users_xml][:tomcat_username] = "admin"
default[:np_galaxy_cookbook][:tomcat_users_xml][:tomcat_password] = "secret_password"


default[:np_galaxy_cookbook][:netpulse_properties][:env] = "dev"
default[:np_galaxy_cookbook][:netpulse_properties][:workout_summary_test_mode] = "true"
default[:np_galaxy_cookbook][:netpulse_properties][:workout_summary_job_status] = "off"
default[:np_galaxy_cookbook][:netpulse_properties][:site_host] = "https://dev-api.netpulse.com"
default[:np_galaxy_cookbook][:netpulse_properties][:memcached_serverList] = "dev-app-1.netpulse.ws:11211,dev-app-2.netpulse.ws:11211"
default[:np_galaxy_cookbook][:netpulse_properties][:embeddedActivemq_dataDirectory] = "/mnt/tomcat/activemq_galaxy_data"
default[:np_galaxy_cookbook][:netpulse_properties][:workout_image_path] = "/mnt/tomcat/workout_image_data"
default[:np_galaxy_cookbook][:netpulse_properties][:workout_error_path] = "/mnt/tomcat/workout_error_data"
default[:np_galaxy_cookbook][:netpulse_properties][:alerts_workoutErrorThreshold] = "15"
default[:np_galaxy_cookbook][:netpulse_properties][:workout_manualCsDistributionList] = "ncasuga@netpulse.com"
default[:np_galaxy_cookbook][:netpulse_properties][:workout_error_distributionList] = "ncasuga@netpulse.com"
default[:np_galaxy_cookbook][:netpulse_properties][:email_enabled] = "true"
default[:np_galaxy_cookbook][:netpulse_properties][:partner_fitstudio_key] = "secret_key"

