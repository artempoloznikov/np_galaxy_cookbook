template "#{node[:np_galaxy_cookbook][:tomcat][:conf]}/context.xml" do
      cookbook "np_galaxy_cookbook"
      source 'context.xml.erb'
      mode '0640'
      owner node[:np_galaxy_cookbook][:tomcat][:user]
      group node[:np_galaxy_cookbook][:tomcat][:group]
      variables(
		:tomcat_db1_source => node[:np_galaxy_cookbook][:server_xml][:db1_source],

		:tomcat_db2_source => node[:np_galaxy_cookbook][:server_xml][:db2_source],

		:tomcat_db3_source => node[:np_galaxy_cookbook][:server_xml][:db3_source],

		:tomcat_db4_source => node[:np_galaxy_cookbook][:server_xml][:db4_source]

	)
end
