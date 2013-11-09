java6_dir = "jdk1.6.0_45"
#start script build and install
template "#{node[:np_titan][:jetty][:home]}/bin/jetty.sh" do
      cookbook "np_titan"
      source 'jetty.sh.erb'
      mode '0755'
      owner node[:np_titan][:jetty][:user]
      group node[:np_titan][:jetty][:group]
      variables(
                  :java_home => "#{node[:np_titan][:java_instdir]}/#{java6_dir}",
                  :jetty_home => node[:np_titan][:jetty][:home],
                  :jetty_tmp => node[:np_titan][:jetty][:tmp],
                  :jetty_pid => node[:np_titan][:jetty][:pid_file],
                  :java_Xms => node[:np_titan][:jetty][:java_Xms],
                  :java_Xmx => node[:np_titan][:jetty][:java_Xmx]
      )
end

#init script build and install
template "/etc/init.d/jetty-core" do
  cookbook "np_titan"
  source 'jetty-core-init.erb'
  mode '0755'
  owner "root"
  group "root"
  variables(
            :jetty_home => node[:np_titan][:jetty][:home],
            :jetty_user => node[:np_titan][:jetty][:user]
            )
end
