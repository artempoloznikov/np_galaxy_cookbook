java6_dir = "jdk1.6.0_45"
#start script build and install
template "#{node[:np_tomcat][:tomcat][:home]}/bin/tomcat.sh" do
      cookbook "np_tomcat"
      source 'tomcat.sh.erb'
      mode '0755'
      owner node[:np_tomcat][:tomcat][:user]
      group node[:np_tomcat][:tomcat][:group]
      variables(
                  :java_home => "#{node[:np_tomcat][:java_instdir]}/#{java6_dir}",
                  :tomcat_home => node[:np_tomcat][:tomcat][:home],
                  :tomcat_tmp => node[:np_tomcat][:tomcat][:tmp],
                  :tomcat_pid => node[:np_tomcat][:tomcat][:pid_file],
                  :java_Xms => node[:np_tomcat][:tomcat][:java_Xms],
                  :java_Xmx => node[:np_tomcat][:tomcat][:java_Xmx]
      )
end

#init script build and install
template "/etc/init.d/tomcat-core" do
  cookbook "np_tomcat"
  source 'tomcat-core-init.erb'
  mode '0755'
  owner "root"
  group "root"
  variables(
            :tomcat_home => node[:np_tomcat][:tomcat][:home],
            :tomcat_user => node[:np_tomcat][:tomcat][:user]
            )
end
