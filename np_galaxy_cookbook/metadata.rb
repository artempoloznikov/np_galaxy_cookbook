maintainer       "clearscale"
maintainer_email "artempoloznikov@clearscale.net"
license          "None"
description      "Cookbook provides tomcat application server implementation."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "13.5.13"

#supports "centos"
#supports "redhat"
supports "ubuntu"

#depends "app"
#depends "repo"
depends "rightscale"

recipe "np_galaxy_cookbook::start_tomcat",
  "Start and enable tomcat service"

recipe "np_galaxy_cookbook::stop_tomcat",
  "Stop and disable tomcat service"

recipe "np_galaxy_cookbook::restart_tomcat",
  "restart tomcat service"

recipe "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  "reconfigure tomcat-users.xml"

recipe "np_galaxy_cookbook::reconfigure_netpulse_properties",
  "reconfigure netpulse.properties"

# == Default attributes

########
attribute "np_galaxy_cookbook/tomcat/rolename",
  :display_name => "tomcat rolename",
  :description => "The rolename",
  :required => "optional",
  :default => "manager-gui",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  ]

attribute "np_galaxy_cookbook/tomcat/username",
  :display_name => "tomcat username",
  :description => "The username",
  :required => "optional",
  :default => "admin",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  ]

attribute "np_galaxy_cookbook/tomcat/password",
  :display_name => "tomcat password",
  :description => "The password",
  :required => "optional",
  :default => "***",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  ]

attribute "np_galaxy_cookbook/tomcat/user",
  :display_name => "tomcat system user",
  :description => "Tomcat system user",
  :required => "optional",
  :default => "tomcat7",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  ]

attribute "np_galaxy_cookbook/tomcat/group",
  :display_name => "Tomcat system grop",
  :description => "Tomcat group",
  :required => "optional",
  :default => "tomcat7",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  ]

#######

attribute "np_galaxy_cookbook/netpulse_properties/env",
  :display_name => "env",
  :description => "Env",
  :required => "optional",
  :default => "dev",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties",
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_summary_test_mode",
  :display_name => "workout_summary_test_mode",
  :description => "workout summary test mode",
  :required => "optional",
  :default => "dev",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties",
  ]

attribute "np_galaxy_cookbook/netpulse_properties/env",
  :display_name => "workout_summary_job_status",
  :description => "workout summary job status",
  :required => "optional",
  :default => "off",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties",
  ]


#default[:np_galaxy_cookbook][:netpulse_properties][:site_host] = "https://dev-api.netpulse.com"

#default[:np_galaxy_cookbook][:netpulse_properties][:memcached.serverList] = "dev-app-1.netpulse.ws:11211,dev-app-2.netpulse.ws:11211"
#default[:np_galaxy_cookbook][:netpulse_properties][:embeddedActivemq_dataDirectory] = "/mnt/tomcat/activemq_galaxy_data"
#default[:np_galaxy_cookbook][:netpulse_properties][:workout_image_path] = "/mnt/tomcat/workout_image_data"
#default[:np_galaxy_cookbook][:netpulse_properties][:workout_error_path] = "/mnt/tomcat/workout_error_data"
#default[:np_galaxy_cookbook][:netpulse_properties][:alerts_workoutErrorThreshold] = "15"
#default[:np_galaxy_cookbook][:netpulse_properties][:workout_manualCsDistributionList] = "ncasuga@netpulse.com"
#default[:np_galaxy_cookbook][:netpulse_properties][:workout_error_distributionList] = "ncasuga@netpulse.com"
#default[:np_galaxy_cookbook][:netpulse_properties][:email_enabled] = "true"
#default[:np_galaxy_cookbook][:netpulse_properties][:partner_fitstudio_key] = "secret_key"
