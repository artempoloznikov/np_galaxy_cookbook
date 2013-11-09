maintainer       "ClearScale"
maintainer_email "artem.poloznikov@clearscale.net"
license          "None"
description      "Cookbook provides Tomcat application server implementation."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "13.5.46"

#supports "centos"
#supports "redhat"
supports "ubuntu"

#depends "app"
#depends "repo"
depends "rightscale"

#recipe "np_galaxy::install_tomcat",
#  "Install the necessary packages, deployment tomcat, build and install init scripts."

recipe "np_galaxy::reconfigure_scripts",
  "Rebuild and install init scripts."

#recipe "np_galaxy::start_tomcat",
#  "Start and enable tomcat service"

#recipe "np_galaxy::stop_tomcat",
#  "Stop and disable tomcat service"

#recipe "np_galaxy::restart_tomcat",
#  "restart tomcat service"


# == Default attributes

attribute "np_galaxy/s3_access_key",
  :display_name => "s3 access_key",
  :description => "",
  :required => "required",
#  :default => "",
  :recipes => [
    "np_galaxy::install_tomcat"
  ]

attribute "np_galaxy/s3_secret_key",
  :display_name => "s3 secret_key",
  :description => "",
  :required => "required",
#  :default => "",
  :recipes => [
    "np_galaxy::install_tomcat"
  ]

attribute "np_galaxy/s3_bucket_name",
  :display_name => "s3 bucket",
  :description => "s3 bucket name for installation files",
  :required => "recommended",
  :default => "np-titan-tomcat-install",
  :recipes => [
    "np_galaxy::install_tomcat"
  ]

attribute "np_galaxy/java_instdir",
  :display_name => "java installation directory",
  :description => "The path...",
  :required => "recommended",
  :default => "/usr/java",
  :recipes => [
    "np_galaxy::install_tomcat",
               "np_galaxy::reconfigure_scripts"
  ]

attribute "np_galaxy/tomcat/home",
  :display_name => "tomcat home directory",
  :description => "The path...",
  :required => "recommended",
  :default => "/usr/local/tomcat-core",
  :recipes => [
               "np_galaxy::install_tomcat",
               "np_galaxy::reconfigure_scripts"
  ]

attribute "np_galaxy/tomcat/tmp",
  :display_name => "tomcat temp directory",
  :description => "The path...",
  :required => "recommended",
  :default => "/usr/local/tomcat-core/tmp",
  :recipes => [
               "np_galaxy::install_tomcat",
               "np_galaxy::reconfigure_scripts"
  ]

attribute "np_galaxy/tomcat/pid_file",
  :display_name => "tomcat PID file",
  :description => "The path...",
  :required => "recommended",
  :default => "/usr/local/tomcat-core/tmp/tomcat.pid",
  :recipes => [
    "np_galaxy::install_tomcat",
               "np_galaxy::reconfigure_scripts"
  ]

attribute "np_galaxy/tomcat/logs",
  :display_name => "tomcat logs path",
  :description => "The path...",
  :required => "recommended",
  :default => "/mnt/ephemeral/tomcat-logs",
  :recipes => [
    "np_galaxy::install_tomcat",
               "np_galaxy::reconfigure_scripts"
  ]

attribute "np_galaxy/tomcat/user",
  :display_name => "tomcat service user",
  :description => "The path...",
  :required => "recommended",
  :default => "tomcat",
  :recipes => [
               "np_galaxy::install_tomcat",
               "np_galaxy::reconfigure_scripts"
  ]

attribute "np_galaxy/tomcat/group",
  :display_name => "tomcat service group",
  :description => "service group",
  :required => "recommended",
  :default => "tomcat",
  :recipes => [
    "np_galaxy::install_tomcat",
               "np_galaxy::reconfigure_scripts"
  ]

attribute "np_galaxy/tomcat/java_Xms",
  :display_name => "java Xms parameter",
  :description => "",
  :required => "recommended",
  :default => "256m",
  :recipes => [
    "np_galaxy::install_tomcat",
               "np_galaxy::reconfigure_scripts"
  ]

attribute "np_galaxy/tomcat/java_Xmx",
  :display_name => "java Xmx parameter",
  :description => "",
  :required => "recommended",
  :default => "1200m",
  :recipes => [
    "np_galaxy::install_tomcat",
               "np_galaxy::reconfigure_scripts"
  ]

#Java tuning parameters
# attribute "app_tomcat/java/xms",
#   :display_name => "Tomcat Java XMS",
#   :description =>
#     "The java Xms argument. Example: 512m",
#   :required => "optional",
#   :default => "512m",
#   :recipes => [
#     "app_tomcat::setup_server_6",
#     "app_tomcat::setup_server_7"
#   ]

# attribute "app_tomcat/java/xmx",
#   :display_name => "Tomcat Java XMX",
#   :description =>
#     "The java Xmx argument. Example: 512m",
#   :required => "optional",
#   :default => "512m",
#   :recipes => [
#     "app_tomcat::setup_server_6",
#     "app_tomcat::setup_server_7"
#   ]

# attribute "app_tomcat/java/permsize",
#   :display_name => "Tomcat Java PermSize",
#   :description =>
#     "The java PermSize argument. Example: 256m",
#   :required => "optional",
#   :default => "256m",
#   :recipes => [
#     "app_tomcat::setup_server_6",
#     "app_tomcat::setup_server_7"
#   ]

# attribute "app_tomcat/java/maxpermsize",
#   :display_name => "Tomcat Java MaxPermSize",
#   :description =>
#     "The java MaxPermSize argument. Example: 256m",
#   :required => "optional",
#   :default => "256m",
#   :recipes => [
#     "app_tomcat::setup_server_6",
#     "app_tomcat::setup_server_7"
#   ]

# attribute "app_tomcat/java/newsize",
#   :display_name => "Tomcat Java NewSize",
#   :description =>
#     "The java NewSize argument. Example: 256m",
#   :required => "optional",
#   :default => "256m",
#   :recipes => [
#     "app_tomcat::setup_server_6",
#     "app_tomcat::setup_server_7"
#   ]

# attribute "app_tomcat/java/maxnewsize",
#   :display_name => "Tomcat Java MaxNewSize",
#   :description =>
#     "The java MaxNewSize argument. Example: 256m",
#   :required => "optional",
#   :default => "256m",
#   :recipes => [
#     "app_tomcat::setup_server_6",
#     "app_tomcat::setup_server_7"
#   ]

# attribute "app_tomcat/datasource_name",
#   :display_name => "Container datasource name",
#   :description =>
#     "This name is used to set up the database connection with the application" +
#     " server. You should set the attribute if your application is compiled to" +
#     " use a different datasource name. To set custom datasource you must" +
#     " override input value. Example: jdbc/MyConnDB",
#   :required => "optional",
#   :default => "jdbc/ConnDB",
#   :recipes => [
#     "app_tomcat::setup_server_6",
#     "app_tomcat::setup_server_7"
#   ]

# attribute "app_tomcat/internal_port",
#   :display_name => "Tomcat Internal Port",
#   :description =>
#     "Sets the internal port on which Tomcat listens. By default, Tomcat" +
#     " listens on localhost port 8080. WARNING: The value for this input" +
#     " should NOT be the same as the value in 'app/port' input as it would" +
#     " conflict with the Apache listen port and would cause a fatal error when" +
#     " the apache service is started.",
#   :required => "optional",
#   :default => "8080",
#   :recipes => [
#     "app_tomcat::setup_server_6",
#     "app_tomcat::setup_server_7"
#   ]
