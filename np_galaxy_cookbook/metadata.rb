maintainer       "clearscale"
maintainer_email "artempoloznikov@clearscale.net"
license          "None"
description      "Cookbook provides tomcat application server implementation."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "13.5.33"

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

recipe "np_galaxy_cookbook::reconfigure_server_xml",
  "reconfigure server.xml"

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
  :required => "recommended",
  :default => "dev",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_summary_test_mode",
  :display_name => "workout_summary_test_mode",
  :description => "workout summary test mode",
  :required => "recommended",
  :default => "dev",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_summary_job_status",
  :display_name => "workout_summary_job_status",
  :description => "workout summary job status",
  :required => "recommended",
  :default => "off",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/site_host",
  :display_name => "site_host",
  :description => "site host",
  :required => "recommended",
  :default => "https://dev-api.netpulse.com",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/memcached_server_list",
  :display_name => "memcached_serverList",
  :description => "memcached serverList",
  :required => "recommended",
  :default => "dev-app-1.netpulse.ws:11211,dev-app-2.netpulse.ws:11211",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/embedded_activemq_data_directory",
  :display_name => "embeddedActivemq_dataDirectory",
  :description => "embeddedActivemq_dataDirectory",
  :required => "recommended",
  :default => "/mnt/tomcat/activemq_galaxy_data",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_image_path",
  :display_name => "workout_image_path",
  :description => "workout_image_path",
  :required => "recommended",
  :default => "/mnt/tomcat/workout_image_data",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_error_path",
  :display_name => "workout_error_path",
  :description => "workout_error_path",
  :required => "recommended",
  :default => "/mnt/tomcat/workout_error_data",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/alerts_workout_error_threshold",
  :display_name => "alerts_workoutErrorThreshold",
  :description => "alerts_workoutErrorThreshold",
  :required => "recommended",
  :default => "15",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_manual_cs_distribution_list",
  :display_name => "workout_manualCsDistributionList",
  :description => "workout_manualCsDistributionList",
  :required => "recommended",
  :default => "ncasuga@netpulse.com",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/workout_error_distribution_list",
  :display_name => "workout_error_distributionList",
  :description => "workout_error_distributionList",
  :required => "recommended",
  :default => "ncasuga@netpulse.com",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/email_enabled",
  :display_name => "email_enabled",
  :description => "email_enabled",
  :required => "recommended",
  :default => "true",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

attribute "np_galaxy_cookbook/netpulse_properties/partner_fitstudio_key",
  :display_name => "partner_fitstudio_key",
  :description => "partner_fitstudio_key",
  :required => "recommended",
  :default => "secret_key",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_netpulse_properties"
  ]

##### server.xml

attribute "np_galaxy_cookbook/server_xml/db1_source",
  :display_name => "db1_source",
  :description => "db1_source",
  :required => "recommended",
  :default => "MainDataSource",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db1_username",
  :display_name => "db1_username",
  :description => "db1_username",
  :required => "recommended",
  :default => "",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db1_password",
  :display_name => "db1_password",
  :description => "db1_password",
  :required => "recommended",
  :default => "",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db1_url",
  :display_name => "db1_url",
  :description => "db1_url",
  :required => "recommended",
  :default => "",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db2_source",
  :display_name => "db1_source",
  :description => "db1_source",
  :required => "recommended",
  :default => "MainSlaveDataSource",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db2_username",
  :display_name => "db2_username",
  :description => "db2_username",
  :required => "recommended",
  :default => "",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db2_password",
  :display_name => "db2_password",
  :description => "db2_password",
  :required => "recommended",
  :default => "",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db2_url",
  :display_name => "db2_url",
  :description => "db2_url",
  :required => "recommended",
  :default => "",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db3_source",
  :display_name => "db1_source",
  :description => "db1_source",
  :required => "recommended",
  :default => "TitanDataSource",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db3_username",
  :display_name => "db3_username",
  :description => "db3_username",
  :required => "recommended",
  :default => "",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db3_password",
  :display_name => "db3_password",
  :description => "db3_password",
  :required => "recommended",
  :default => "",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db4_source",
  :display_name => "db4_source",
  :description => "db4_source",
  :required => "recommended",
  :default => "ReportDataSource",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db4_username",
  :display_name => "db4_username",
  :description => "db4_username",
  :required => "recommended",
  :default => "",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db4_password",
  :display_name => "db4_password",
  :description => "db4_password",
  :required => "recommended",
  :default => "",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/db4_url",
  :display_name => "db4_url",
  :description => "db4_url",
  :required => "recommended",
  :default => "",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

#attribute "np_galaxy_cookbook/server_xml/static_member_port",
#  :display_name => "static_member_port",
#  :description => "static_member_port",
#  :required => "recommended",
#  :default => "4000",
#  :recipes => [
#    "np_galaxy_cookbook::reconfigure_server_xml"
#  ]

#    :static_member_secure_port => node[:np_galaxy_cookbook][:tomcat][:static_member_secure_port],
#attribute "np_galaxy_cookbook/server_xml/static_member_secure_port",
#  :display_name => "static_member_secure_port",
#  :description => "static_member_secure_port",
#  :required => "recommended",
#  :default => "-1",
#  :recipes => [
#    "np_galaxy_cookbook::reconfigure_server_xml"
#  ]


attribute "np_galaxy_cookbook/server_xml/static_member_host",
  :display_name => "static_member_host",
  :description => "static_member_host",
  :required => "recommended",
  :default => "dev-app-2.netpulse.ws",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/static_member_domain",
  :display_name => "static_member_domain",
  :description => "static_member_domain",
  :required => "recommended",
  :default => "dev-cluster",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

attribute "np_galaxy_cookbook/server_xml/static_member_unique_id",
  :display_name => "static_member_unique_id",
  :description => "static_member_unique_id",
  :required => "recommended",
  :default => "{2,0,1,3,0,1,0,8,0,0,0,0,0,0,0,2}",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_server_xml"
  ]

