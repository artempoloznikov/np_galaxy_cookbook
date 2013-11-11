template "#{node[:np_galaxy_cookbook][:tomcat][:conf]}/server.xml" do
      cookbook "np_galaxy_cookbook"
      source 'server.xml.erb'
      mode '0640'
      owner node[:np_galaxy_cookbook][:tomcat][:user]
      group node[:np_galaxy_cookbook][:tomcat][:group]
      variables(
#		:db1_username => node[:np_galaxy_cookbook][:tomcat][:db1_username],
#		:db1_password => node[:np_galaxy_cookbook][:tomcat][:db1_password],
#		:db1_url = > node[:np_galaxy_cookbook][:tomcat][:db1_url],

#		:db2_username => node[:np_galaxy_cookbook][:tomcat][:db2_username],
#		:db2_password => node[:np_galaxy_cookbook][:tomcat][:db2_password],
#		:db2_url = > node[:np_galaxy_cookbook][:tomcat][:db2_url],

#		:db3_username => node[:np_galaxy_cookbook][:tomcat][:db3_username],
#		:db3_password => node[:np_galaxy_cookbook][:tomcat][:db3_password],
#		:db3_url = > node[:np_galaxy_cookbook][:tomcat][:db3_url],

#		:db4_username => node[:np_galaxy_cookbook][:tomcat][:db4_username],
#		:db4_password => node[:np_galaxy_cookbook][:tomcat][:db4_password],
#		:db4_url = > node[:np_galaxy_cookbook][:tomcat][:db4_url],

		:static_member_port => node[:np_galaxy_cookbook][:tomcat][:static_member_port],
		:static_member_secure_port => node[:np_galaxy_cookbook][:tomcat][:static_member_secure_port],
		:static_member_host => node[:np_galaxy_cookbook][:tomcat][:static_member_host],
		:static_member_domain => node[:np_galaxy_cookbook][:tomcat][:static_member_domain],
		:static_member_unique_id => node[:np_galaxy_cookbook][:tomcat][:static_member_unique_id]
	)
end
