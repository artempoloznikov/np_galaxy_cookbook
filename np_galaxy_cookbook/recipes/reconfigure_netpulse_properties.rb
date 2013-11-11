template "#{node[:np_galaxy_cokbook][:tomcat][:conf]}/netpulse.properties" do
      cookbook "np_galaxy_cookbook"
      source 'netpulse.properties.erb'
      mode '0644'
      owner node[:np_galaxy_cookbook][:tomcat][:user]
      group node[:np_galaxy_cookbook][:tomcat][:group]
      variables(
            :tomcat_rolename => node[:np_galaxy_cookbook][:tomcat_users_xml][:tomcat_rolename],
            :tomcat_username => node[:np_galaxy_cookbook][:tomcat_users_xml][:tomcat_username],
            :tomcat_password => node[:np_galaxy_cookbook][:tomcat_users_xml][:tomcat_password],

            :tomcat_env = node[:np_galaxy_cookbook][:netpulse_properties][:env],
            :tomcat_workout_summary_test_mode = node[:np_galaxy_cookbook][:netpulse_properties][:workout_summary_test_mode],
            :tomcat_workout_summary_job_status = node[:np_galaxy_cookbook][:netpulse_properties][:workout_summary_job_status],
            :tomcat_site_host = node[:np_galaxy_cookbook][:netpulse_properties][:site_host],
            :tomcat_memcached_serverList = node[:np_galaxy_cookbook][:netpulse_properties][:memcached_serverList],
            :tomcat_embeddedActivemq_dataDirectory = node[:np_galaxy_cookbook][:netpulse_properties][:embedded_activemq_data_directory],
            :tomcat_workout_image_path = node[:np_galaxy_cookbook][:netpulse_properties][:workout_image_path],
            :tomcat_workout_error_path = node[:np_galaxy_cookbook][:netpulse_properties][:workout_error_path],
            :tomcat_alerts_workoutErrorThreshold = node[:np_galaxy_cookbook][:netpulse_properties][:alerts_workout_error_threshold],
            :tomcat_workout_manualCsDistributionList = node[:np_galaxy_cookbook][:netpulse_properties][:workout_manual_cs_distribution_list],
            :tomcat_workout_error_distributionList = node[:np_galaxy_cookbook][:netpulse_properties][:workout_error_distribution_list],
            :tomcat_email_enabled = node[:np_galaxy_cookbook][:netpulse_properties][:email_enabled],
            :tomcat_partner_fitstudio_key = node[:np_galaxy_cookbook][:netpulse_properties][:partner_fitstudio_key]

      )
end
