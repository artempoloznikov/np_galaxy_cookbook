maintainer       "clearscale"
maintainer_email "artempoloznikov@clearscale.net"
license          "None"
description      "Cookbook provides tomcat application server implementation."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "13.5.14"

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
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml"
  ]

attribute "np_galaxy_cookbook/tomcat/username",
  :display_name => "tomcat username",
  :description => "The username",
  :required => "optional",
  :default => "admin",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml"
  ]

attribute "np_galaxy_cookbook/tomcat/password",
  :display_name => "tomcat password",
  :description => "The password",
  :required => "optional",
  :default => "***",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml"
  ]

attribute "np_galaxy_cookbook/tomcat/user",
  :display_name => "tomcat system user",
  :description => "Tomcat system user",
  :required => "optional",
  :default => "tomcat7",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml"
  ]

attribute "np_galaxy_cookbook/tomcat/group",
  :display_name => "Tomcat system grop",
  :description => "Tomcat group",
  :required => "optional",
  :default => "tomcat7",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml"
  ]

#######

attribute "np_galaxy_cookbook/netpulse_properties/env",
  :display_name => "env",
  :description => "Env",
  :required => "optional",
  :default => "dev",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_summary_test_mode",
  :display_name => "workout_summary_test_mode",
  :description => "workout summary test mode",
  :required => "optional",
  :default => "dev",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_summary_job_status",
  :display_name => "workout_summary_job_status",
  :description => "workout summary job status",
  :required => "optional",
  :default => "off",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/site_host",
  :display_name => "site_host",
  :description => "site host",
  :required => "optional",
  :default => "https://dev-api.netpulse.com",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/memcached_serverList",
  :display_name => "memcached_serverList",
  :description => "memcached.serverList",
  :required => "optional",
  :default => "dev-app-1.netpulse.ws:11211,dev-app-2.netpulse.ws:11211",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/embeddedActivemq_dataDirectory",
  :display_name => "embeddedActivemq_dataDirectory",
  :description => "embeddedActivemq_dataDirectory",
  :required => "optional",
  :default => "/mnt/tomcat/activemq_galaxy_data",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_image_path",
  :display_name => "workout_image_path",
  :description => "workout_image_path",
  :required => "optional",
  :default => "/mnt/tomcat/workout_image_data",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_error_path",
  :display_name => "workout_error_path",
  :description => "workout_error_path",
  :required => "optional",
  :default => "/mnt/tomcat/workout_error_data",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/alerts_workoutErrorThreshold",
  :display_name => "alerts_workoutErrorThreshold",
  :description => "alerts_workoutErrorThreshold",
  :required => "optional",
  :default => "15",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_manualCsDistributionList",
  :display_name => "workout_manualCsDistributionList",
  :description => "workout_manualCsDistributionList",
  :required => "optional",
  :default => "ncasuga@netpulse.com",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/",
  :display_name => "workout_error_distributionList",
  :description => "workout_error_distributionList",
  :required => "optional",
  :default => "ncasuga@netpulse.com",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/email_enabled",
  :display_name => "email_enabled",
  :description => "email_enabled",
  :required => "optional",
  :default => "true",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/partner_fitstudio_key",
  :display_name => "partner_fitstudio_key",
  :description => "partner_fitstudio_key",
  :required => "optional",
  :default => "secret_key",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

