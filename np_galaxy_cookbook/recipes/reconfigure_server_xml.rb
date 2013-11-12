template "#{node[:np_galaxy_cookbook][:tomcat][:conf]}/server.xml" do
      cookbook "np_galaxy_cookbook"
      source 'server.xml.erb'
      mode '0640'
      owner node[:np_galaxy_cookbook][:tomcat][:user]
      group node[:np_galaxy_cookbook][:tomcat][:group]
      variables(
		:tomcat_db1_username => node[:np_galaxy_cookbook][:tomcat][:db1_username],
		:tomcat_db1_password => node[:np_galaxy_cookbook][:tomcat][:db1_password],
		:tomcat_db1_url => node[:np_galaxy_cookbook][:tomcat][:db1_url],

		:tomcat_db2_username => node[:np_galaxy_cookbook][:tomcat][:db2_username],
		:tomcat_db2_password => node[:np_galaxy_cookbook][:tomcat][:db2_password],
		:tomcat_db2_url => node[:np_galaxy_cookbook][:tomcat][:db2_url],

		:tomcat_db3_username => node[:np_galaxy_cookbook][:tomcat][:db3_username],
		:tomcat_db3_password => node[:np_galaxy_cookbook][:tomcat][:db3_password],
		:tomcat_db3_url => node[:np_galaxy_cookbook][:tomcat][:db3_url],

		:tomcat_db4_username => node[:np_galaxy_cookbook][:tomcat][:db4_username],
		:tomcat_db4_password => node[:np_galaxy_cookbook][:tomcat][:db4_password],
		:tomcat_db4_url => node[:np_galaxy_cookbook][:tomcat][:db4_url],

		:static_member_port => node[:np_galaxy_cookbook][:tomcat][:static_member_port],
		:static_member_secure_port => node[:np_galaxy_cookbook][:tomcat][:static_member_secure_port],
		:static_member_host => node[:np_galaxy_cookbook][:tomcat][:static_member_host],
		:static_member_domain => node[:np_galaxy_cookbook][:tomcat][:static_member_domain],
		:static_member_unique_id => node[:np_galaxy_cookbook][:tomcat][:static_member_unique_id]
	)
end
