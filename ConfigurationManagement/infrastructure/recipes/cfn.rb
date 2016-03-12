directory '/etc/cfn' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

directory '/etc/cfn/hooks.d' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/etc/cfn/cfn-hup.conf' do
  source 'cfn-hup.conf.erb'
  owner 'root'
  group 'root'
  mode '0444'
end

template '/etc/cfn/hooks.d/cfn-auto-reloader.conf' do
  source 'cfn-auto-reloader.conf.erb'
  owner 'root'
  group 'root'
  mode '0444'
end

link '/var/www/html/cfn' do
  to '/etc/cfn'
  link_type :symbolic
end

#=beging is same as /* in java
=begin
              "0015-chmod-html":{
                "command":"sudo chmod -R a+r *",
                "cwd":"/etc/cfn",
                "ignoreErrors":"true"
              }
            },
            "services":{
              "sysvinit":{
                "cfn-hup":{
                  "enabled":"true",
                  "ensureRunning":"true",
                  "files":[
                    "/etc/cfn/cfn-hup.conf",
                    "/etc/cfn/hooks.d/cfn-auto-reloader.conf"
                  ]
                }
              }
            }
          }
        }
=end