template "#{node[:np_galaxy_cookbook][:tomcat][:conf]}/log4j.properties" do
      cookbook "np_galaxy_cookbook"
      source 'log4j.properties.erb'
      mode '0640'
      owner node[:np_galaxy_cookbook][:tomcat][:user]
      group node[:np_galaxy_cookbook][:tomcat][:group]
      variables(
		:tomcat_log4j_default_file => node[:np_galaxy_cookbook][:log4j_properties][:log4j_default_file],
		:tomcat_log4j_default_conversion_pattern => node[:np_galaxy_cookbook][:log4j_properties][:log4j_default_conversion_pattern],
		:tomcat_log4j_std_conversion_pattern => node[:np_galaxy_cookbook][:log4j_properties][:log4j_std_conversion_pattern],
		:tomcat_log4j_loglevel => node[:np_galaxy_cookbook][:log4j_properties][:log4j_loglelve]
	)
end
