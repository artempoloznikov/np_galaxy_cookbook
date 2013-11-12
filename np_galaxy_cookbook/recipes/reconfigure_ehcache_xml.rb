template "#{node[:np_galaxy_cookbook][:tomcat][:conf]}/ehcache.xml" do
      cookbook "np_galaxy_cookbook"
      source 'ehcache.xml.erb'
      mode '0640'
      owner node[:np_galaxy_cookbook][:tomcat][:user]
      group node[:np_galaxy_cookbook][:tomcat][:group]
      variables(
		:tomcat_ehcache_disk_store_path => node[:np_galaxy_cookbook][:ehcache_xml][:disk_store_path]
	)
end
