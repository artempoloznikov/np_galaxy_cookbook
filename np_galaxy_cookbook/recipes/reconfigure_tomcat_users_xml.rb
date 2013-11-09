template "/etc/tomcat7/tomcat-users.xml" do
      cookbook "np_galaxy_cookbook"
      source 'tomcat-users.xml.erb'
      mode '0640'
      owner node[:np_galaxy_cookbook][:tomcat][:user]
      group node[:np_galaxy_cookbook][:tomcat][:group]
      variables(
		:tomcat_rolename => node[:np_galaxy_cookbook][:tomcat_users_xml][:tomcat_rolename],
		:tomcat_username => node[:np_galaxy_cookbook][:tomcat_users_xml][:tomcat_username],
		:tomcat_password => node[:np_galaxy_cookbook][:tomcat_users_xml][:tomcat_password]
      )
end
