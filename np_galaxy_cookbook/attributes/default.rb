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

default[:np_tomcat][:s3_access_key] = ""
default[:np_tomcat][:s3_secret_key] = ""
default[:np_tomcat][:s3_bucket_name] = "np-titan-tomcat-install"

default[:np_tomcat][:java_instdir] = "/usr/java"

default[:np_tomcat][:tomcat][:home] = "/usr/local/tomcat-core"
default[:np_tomcat][:tomcat][:tmp] = "/usr/local/tomcat-core/tmp"
default[:np_tomcat][:tomcat][:pid_file] = "/usr/local/tomcat-core/tmp/tomcat.pid"
default[:np_tomcat][:tomcat][:logs] = "/mnt/ephemeral/tomcat-logs"
default[:np_tomcat][:tomcat][:user] = "tomcat"
default[:np_tomcat][:tomcat][:group] = "tomcat"
default[:np_tomcat][:tomcat][:java_xms] = "256m"
default[:np_tomcat][:tomcat][:java_xmx] = "1200m"

default[:np_tomcat][:tomcat_xml][:tomcat_port] = "8080"
default[:np_tomcat][:tomcat_xml][:tomcat_port] = "8080"


# Multiple DB connectors
dbconn_count = 6
dbconns = 1.upto(dbconn_count).map { |number| "db_connector_#{number}" }
# Set up DB connector attributes for each
dbconns.sort.each_with_index.map do |dbconn, index|
  [dbconn, index + 1]
end.each do |dbconn, number|
  default[:np_tomcat][:tomcat_xml][dbconn][:id] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:jdbc] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:host] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:port] = "3306"
  default[:np_tomcat][:tomcat_xml][dbconn][:db_name] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:user] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:password] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:initialsize] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:maxactive] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:maxidle] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:minidle] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:maxwait] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:validationquery] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:testonborrow] = ""
  default[:np_tomcat][:tomcat_xml][dbconn][:testwhileidle] = ""
end

default[:np_tomcat][:tomcat][:contexts_dir] = "/contexts"
default[:np_tomcat][:tomcat_xml][:logs][:requestlog_name] = ""
default[:np_tomcat][:tomcat_xml][:logs][:serverlog_name] = ""


## inputs for npserver.properties config file
default[:npserver_properties][:server][:serverconfig][:env] = ""

# Multiple MongoDB connectors (for npserver.properties conf)
mdbconn_count = 1
mdbconns = 1.upto(mdbconn_count).map { |number| "mongodb_connector_#{number}" }
# Set up MongoDB connector attributes for each
mdbconns.sort.each_with_index.map do |mdbconn, index|
  [mdbconn, index + 1]
end.each do |mdbconn, number|
  default[:npserver_properties][mdbconn][:host] = ""
  default[:npserver_properties][mdbconn][:port] = ""
end

default[:npserver_properties][:mongodb][:dbname] = ""
default[:npserver_properties][:mongodb][:numconns] = ""
default[:npserver_properties][:mongodb][:timeoutms] = ""
default[:npserver_properties][:log][:emaillevel] = ""
default[:npserver_properties][:log][:emaildefaultlist] = ""
default[:npserver_properties][:log][:emaildefaultqueuesecs] = ""
default[:npserver_properties][:server][:serverconfig][:devicedownmins] = ""
default[:npserver_properties][:server][:serverconfig][:indicatorperiodmins] = ""
default[:npserver_properties][:server][:serverconfig][:alertperiodmins] = ""
default[:npserver_properties][:server][:log][:timing] = ""
default[:npserver_properties][:server][:admin][:support][:slowlogsecs] = ""
default[:npserver_properties][:server][:db][:debug] = ""
default[:npserver_properties][:server][:db][:debug][:startt] = ""
default[:npserver_properties][:server][:db][:debug][:minms] = ""


