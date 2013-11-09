maintainer       "clearscale"
maintainer_email "artempoloznikov@clearscale.net"
license          "None"
description      "Cookbook provides tomcat application server implementation."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "13.5.12"

#supports "centos"
#supports "redhat"
supports "ubuntu"

#depends "app"
#depends "repo"
depends "rightscale"

recipe "np_galaxy_cookbook::install_tomcat",
  "Install the necessary packages, deployment tomcat, build and install init scripts."

#recipe "np_galaxy_cookbook::reconfigure_scripts",
#  "Rebuild and install init scripts."

#recipe "np_galaxy_cookbook::reconfigure_tomcat_xml",
#  "Reconfigure tomcat.xml config file."

#recipe "np_galaxy_cookbook::reconfigure_npserver_properties",
#  "Reconfigure npserver.properties config file."

recipe "np_galaxy_cookbook::start_tomcat",
  "Start and enable tomcat service"

recipe "np_galaxy_cookbook::stop_tomcat",
  "Stop and disable tomcat service"

recipe "np_galaxy_cookbook::restart_tomcat",
  "restart tomcat service"

recipe "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  "reconfigure tomcat-users.xml"

recipe "np_galaxy_cookbook::reconfigure_netpulse_properties",
  "reconfigure tomcat-users.xml"

# == Default attributes

attribute "np_galaxy_cookbook/s3_access_key",
  :display_name => "s3 access_key",
  :description => "",
  :required => "required",
#  :default => "",
  :recipes => [
    "np_galaxy_cookbook::install_tomcat"
  ]

attribute "np_galaxy_cookbook/s3_secret_key",
  :display_name => "s3 secret_key",
  :description => "",
  :required => "required",
#  :default => "",
  :recipes => [
    "np_galaxy_cookbook::install_tomcat"
  ]

attribute "np_galaxy_cookbook/s3_bucket_name",
  :display_name => "s3 bucket",
  :description => "s3 bucket name for installation files",
  :required => "required",
#  :default => "np-titan-tomcat-install",
  :recipes => [
    "np_galaxy_cookbook::install_tomcat"
  ]

########
attribute "np_galaxy_cookbook/tomcat/rolename",
  :display_name => "tomcat rolename",
  :description => "The rolename",
  :required => "optional",
#  :default => "manager-gui",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  ]

attribute "np_galaxy_cookbook/tomcat/username",
  :display_name => "tomcat username",
  :description => "The username",
  :required => "optional",
#  :default => "admin",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  ]

attribute "np_galaxy_cookbook/tomcat/password",
  :display_name => "tomcat password",
  :description => "The password",
  :required => "optional",
#  :default => "***",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  ]

attribute "np_galaxy_cookbook/tomcat/user",
  :display_name => "tomcat system user",
  :description => "Tomcat system user",
  :required => "optional",
#  :default => "tomcat",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  ]

attribute "np_galaxy_cookbook/tomcat/group",
  :display_name => "Tomcat system grop",
  :description => "Tomcat group",
  :required => "optional",
#  :default => "tomcat",
  :recipes => [
    "np_galaxy_cookbook::reconfigure_tomcat_users_xml",
  ]

#attribute "np_galaxy_cookbook/java_instdir",
#  :display_name => "java installation directory",
#  :description => "The path to java installation directory",
#  :required => "optional",
#  :default => "/usr/java",
#  :recipes => [
#               "np_galaxy_cookbook::install_tomcat",
#               "np_galaxy_cookbook::reconfigure_scripts"
#  ]

#attribute "np_galaxy_cookbook/tomcat/home",
#  :display_name => "tomcat home directory",
#  :description => "The path...",
#  :required => "recommended",
#  :default => "/usr/local/tomcat-core",
#  :recipes => [
#               "np_galaxy_cookbook::install_tomcat",
#               "np_galaxy_cookbook::reconfigure_scripts"
#  ]

#attribute "np_galaxy_cookbook/tomcat/tmp",
#  :display_name => "tomcat temp directory",
#  :description => "The path...",
#  :required => "optional",
#  :default => "/usr/local/tomcat-core/tmp",
#  :recipes => [
#               "np_galaxy_cookbook::install_tomcat",
#               "np_galaxy_cookbook::reconfigure_scripts"
#  ]

#attribute "np_galaxy_cookbook/tomcat/pid_file",
#  :display_name => "tomcat PID file",
#  :description => "The path...",
#  :required => "optional",
#  :default => "/usr/local/tomcat-core/tmp/tomcat.pid",
#  :recipes => [
#    "np_galaxy_cookbook::install_tomcat",
#               "np_galaxy_cookbook::reconfigure_scripts"
#  ]

#attribute "np_galaxy_cookbook/tomcat/logs",
#  :display_name => "tomcat logs path",
#  :description => "The path...",
#  :required => "optional",
#  :default => "/mnt/ephemeral/tomcat-logs",
#  :recipes => [
#               "np_galaxy_cookbook::install_tomcat",
#               "np_galaxy_cookbook::reconfigure_scripts"
#  ]

#attribute "np_galaxy_cookbook/tomcat/user",
#  :display_name => "tomcat service user",
#  :description => "The path...",
#  :required => "optional",
#  :default => "tomcat",
#  :recipes => [
#               "np_galaxy_cookbook::install_tomcat",
#               "np_galaxy_cookbook::reconfigure_scripts"
#  ]

#attribute "np_galaxy_cookbook/tomcat/group",
#  :display_name => "tomcat service group",
#  :description => "service group",
#  :required => "optional",
#  :default => "tomcat",
#  :recipes => [
#               "np_galaxy_cookbook::install_tomcat",
#               "np_galaxy_cookbook::reconfigure_scripts"
#  ]

#attribute "np_galaxy_cookbook/tomcat/java_xms",
#  :display_name => "java Xms parameter",
#  :description => "",
#  :required => "optional",
#  :default => "256m",
#  :recipes => [
#               "np_galaxy_cookbook::install_tomcat",
#               "np_galaxy_cookbook::reconfigure_scripts"
#  ]

#attribute "np_galaxy_cookbook/tomcat/java_xmx",
#  :display_name => "java Xmx parameter",
#  :description => "",
#  :required => "optional",
#  :default => "1200m",
#  :recipes => [
#               "np_galaxy_cookbook::install_tomcat",
#               "np_galaxy_cookbook::reconfigure_scripts"
#  ]

#attribute "np_galaxy_cookbook/tomcat_xml/tomcat_port",
#  :display_name => "tomcat.port property in tomcat.xml",
#  :description => "",
#  :required => "optional",
#  :default => "8080",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#              ]



# Multiple DB connectors (for tomcat.xml conf)
#dbconn_count = 6
#dbconns = 1.upto(dbconn_count).map { |number| "db_connector_#{number}" }
# Set up DB connector attributes for each
#dbconns.sort.each_with_index.map do |dbconn, index|
#  [dbconn, index + 1]
#end.each do |dbconn, number|
#  grouping "np_galaxy_cookbook/tomcat_xml/#{dbconn}",
#  :title => "DB connector #{number}",
#  :description =>
#    "Attributes for the DB connector #{dbconn}."
#
#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/id",
#    :display_name => "DB connector id (#{number})",
#    :description =>
#      " ",
#    :required => 'required',
#    :recipes => ["np_galaxy_cookbook::reconfigure_tomcat_xml"]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/jdbc",
#    :display_name => "DB jdbc arg (#{number})",
#    :description => "",
#    :required => "recommended",
#    :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#                ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/host",
#    :display_name => "DB host (#{number})",
#    :description => "",
#    :required => "required",
#    :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#                ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/port",
#  :display_name => "DB port (#{number})",
#  :description => "",
#  :required => "optional",
#  :default => "3306",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/db_name",
#  :display_name => "DB name (#{number})",
#  :description => "",
#  :required => "required",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/user",
#  :display_name => "DB username (#{number})",
#  :description => "",
#  :required => "required",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/password",
#  :display_name => "DB password (#{number})",
#  :description => "",
#  :required => "required",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/initialsize",
#  :display_name => "DB initialSize (#{number})",
#  :description => "",
#  :required => "optional",
#  :default => "10",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/maxactive",
#  :display_name => "DB maxActive (#{number})",
#  :description => "",
#  :required => "optional",
#  :default => "75",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/maxidle",
#  :display_name => "DB maxIdle (#{number})",
#  :description => "",
#  :required => "optional",
#  :default => "20",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/minidle",
#  :display_name => "DB minIdle (#{number})",
#  :description => "",
#  :required => "optional",
#  :default => "10",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/maxwait",
#  :display_name => "DB maxWait (#{number})",
#  :description => "",
#  :required => "optional",
#  :default => "30000",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/validationquery",
#  :display_name => "DB validationQuery (#{number})",
#  :description => "",
#  :required => "optional",
#  :default => "select 1",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/testonborrow",
#  :display_name => "DB testOnBorrow (#{number})",
#  :description => "",
#  :required => "optional",
#  :type => "string",
#  :choice => ["true", "false"],
#  :default => "true",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#  attribute "np_galaxy_cookbook/tomcat_xml/#{dbconn}/testwhileidle",
#  :display_name => "DB testWhileIdle (#{number})",
#  :description => "",
#  :required => "optional",
#  :type => "string",
#  :choice => ["true", "false"],
#  :default => "true",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]
#
#end

#attribute "np_galaxy_cookbook/tomcat/contexts_dir",
#  :display_name => "tomcat contexts dir",
#  :description => "The path...",
#  :required => "recommended",
#  :default => "/contexts",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#attribute "np_galaxy_cookbook/tomcat_xml/logs/requestlog_name",
#  :display_name => "RequestLog filename",
#  :description => "",
#  :required => "optional",
#  :default => "/yyyy_mm_dd.request.log",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

#attribute "np_galaxy_cookbook/tomcat_xml/logs/serverlog_name",
#  :display_name => "ServerLog filename",
#  :description => "",
#  :required => "optional",
#  :default => "/yyyy_mm_dd.server.log",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_tomcat_xml"
#  ]

## inputs for npserver.properties config file
#attribute "npserver_properties/server/serverconfig/env",
#  :display_name => "deployment environment",
#  :description => "Specify which environment this deployment is for. This should always be one of dev/qa/stage/prod.",
#  :required => "recommended",
#  :type => "string",
#  :choice => ["dev", "qa", "stage", "prod"],
#  :default => "qa",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

# Multiple MongoDB connectors (for npserver.properties conf)
#mdbconn_count = 1
#mdbconns = 1.upto(mdbconn_count).map { |number| "mongodb_connector_#{number}" }
# Set up MongoDB connector attributes for each
#mdbconns.sort.each_with_index.map do |mdbconn, index|
#  [mdbconn, index + 1]
#end.each do |mdbconn, number|
#  grouping "npserver_properties/#{mdbconn}",
#  :title => "MongoDB connector #{number}",
#  :description =>
#    "Attributes for the MongoDB connector #{mdbconn}."

#  attribute "npserver_properties/#{mdbconn}/host",
#    :display_name => "MongoDB host (#{number})",
#    :description =>
#      " ",
#    :required => 'required',
#    :recipes => ["np_galaxy_cookbook::reconfigure_npserver_properties"]

#  attribute "npserver_properties/#{mdbconn}/port",
#    :display_name => "MongoDB port (#{number})",
#    :description =>
#      " ",
#    :required => 'recommended',
#    :default => '27017',
#    :recipes => ["np_galaxy_cookbook::reconfigure_npserver_properties"]
#
#end

#attribute "npserver_properties/mongodb/dbname",
#  :display_name => "MongoDB DB name",
#  :description => "",
#  :required => "required",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/mongodb/numconns",
#  :display_name => "MongoDB connections number",
#  :description => "",
#  :required => "recommended",
#  :default => "500",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/mongodb/timeoutms",
#  :display_name => "MongoDB timeout in ms",
#  :description => "",
#  :required => "recommended",
#  :default => "30000",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/log/emaillevel",
#  :display_name => "log emailLevel",
#  :description => "Configure how log messages will be sent via email. Only messages at or above the emailLevel will be sent via email.",
#  :required => "optional",
#  :choice => ["none", "debug", "info", "warning", "error"],
#  :default => "warning",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/log/emaildefaultlist",
#  :display_name => "log emailDefaultList",
#  :description => "Configure how log messages will be sent via email. The emailDefaultList is which of the log_mailing_list db entries will be used by default, for log messages that don't specify a list.",
#  :required => "optional",
#  :default => "server-dev",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/log/emaildefaultqueuesecs",
#  :display_name => "log emailDefaultQueueSecs",
#  :description => "Configure how log messages will be sent via email. The emailDefaultQueueSecs determines how long multiple copies of the same message will be batched up before being sent, for log messages that don't specify their own value.",
#  :required => "optional",
#  :default => "300",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/server/serverconfig/devicedownmins",
#  :display_name => "server.serverConfig.deviceDownMins",
#  :description => "How much time must pass to consider a device \"down\".",
#  :required => "optional",
#  :default => "30",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/server/serverconfig/indicatorperiodmins",
#  :display_name => "server.serverConfig.indicatorPeriodMins",
#  :description => "How often to update the status indicators. If this is different than alertPeriodMins, the indicators will also be updated before sending alerts.",
#  :required => "optional",
#  :default => "5",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/server/serverconfig/alertperiodmins",
#  :display_name => "server.serverConfig.alertPeriodMins",
#  :description => "How often to update the system alerts and send notifications.",
#  :required => "optional",
#  :default => "5",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/server/log/timing",
#  :display_name => "server.log.timing",
#  :description => "Whether or not to log timing info. This can be useful, but verbose. Monitor if left on.",
#  :required => "optional",
#  :choice => ["true", "false"],
#  :default => "true",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/server/admin/support/slowlogsecs",
#  :display_name => "server.admin.support.slowLogSecs",
#  :description => "We log support and report pages that load \"slow\". Set the load time (in seconds) above which we want to be notified.",
#  :required => "optional",
#  :default => "120",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/server/db/debug",
#  :display_name => "server.db.debug",
#  :description => "Whether or not to log queries. This only applies to queries run through com.netpulse.db.DbObject. Enabling this writes a LOT of messages, so only use for debugging and turn off when no longer needed.",
#  :required => "optional",
#  :choice => ["true", "false"],
#  :default => "true",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/server/db/debug/startt",
#  :display_name => "server.db.debug.start",
#  :description => "",
#  :required => "optional",
#  :choice => ["true", "false"],
#  :default => "true",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]

#attribute "npserver_properties/server/db/debug/minms",
#  :display_name => "server.db.debug.minMs",
#  :description => "Minimum query time to log, so that only slow queries will be recorded.  Set minMs to 0 to log all DbObject queries.",
#  :required => "optional",
#  :default => "30000",
#  :recipes => [
#               "np_galaxy_cookbook::reconfigure_npserver_properties"
#  ]


