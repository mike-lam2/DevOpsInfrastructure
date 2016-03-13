gitsite = node.default['default']['Gitsite']
application= node.default['default']['Application']
branch_name = node.default['default']['BranchToClone']
repo=gitsite+application+'.git'

=begin
#diff between synvh clone ???
git '/var/www/html/'+application do
   repository repo
   revision branch_name
   checkout_branch branch_name
   enable_checkout false
   action :sync
   user 'apache'
   group 'apache'
end
=end

bash 'git-clone' do
  cwd '/var/www/html/'
  user 'apache'
  group 'apache'
  code <<-EOH
    git clone https://github.com/mike-lam2/#{application} --branch #{branch_name} 
    EOH
end

file '/var/www/html/'+application+'/build.sh' do
  mode '0775'
end

=begin


 "git clone https://github.com/mike-lam2/",
                      {
                        "Ref":"Application"
                      },
                      " --branch ",
                      {
                        "Ref":"BranchToClone"
                      }
                    ]
                  ]


            "commands":{
              "0015-chmod-html":{
                "command":"sudo chmod a+w html",
                "cwd":"/var/www",
                "ignoreErrors":"true"
              },

              "0050-chown-Application":{
                "command":{
                  "Fn::Join":[
                    "",
                    [
                      "sudo chown -R apache ",
                      {
                        "Ref":"Application"
                      }
                    ]
                  ]
                },
                "cwd":"/var/www/html",
                "ignoreErrors":"true"
              },
              "0060-chgrp-Application":{
                "command":{
                  "Fn::Join":[
                    "",
                    [
                      "sudo chgrp -R apache ",
                      {
                        "Ref":"Application"
                      }
                    ]
                  ]
                },
                "cwd":"/var/www/html",
                "ignoreErrors":"true"
     
   ]
   
=end