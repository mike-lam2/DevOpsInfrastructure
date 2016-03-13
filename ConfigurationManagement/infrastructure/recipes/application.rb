gitsite = node.default['default']['Gitsite']
application= node.default['default']['Appplication']
branch_name = node.default['default']['BranchToClone']
repo=gitsite+application+'.git'

git '/var/www/html/'+application do
   repository repo
   revision branch_name
   action :sync
   user 'apache'
   group 'apache'
end



=begin

            "commands":{
              "0015-chmod-html":{
                "command":"sudo chmod a+w html",
                "cwd":"/var/www",
                "ignoreErrors":"true"
              },
              "0020-git-Application":{
                "command":{
                  "Fn::Join":[
                    "",
                    [
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
                },
                "cwd":"/var/www/html",
                "ignoreErrors":"true"
              },
              "0030-chmod-build":{
                "command":{
                  "Fn::Join":[
                    "",
                    [
                      "sudo chmod a+x ",
                      {
                        "Ref":"Application"
                      },
                      "/build.sh"
                    ]
                  ]
                },
                "cwd":"/var/www/html",
                "ignoreErrors":"true"
              },
              "0040-build":{
                "command":{
                  "Fn::Join":[
                    "",
                    [
                      "sudo chmod a+x ",
                      {
                        "Ref":"Application"
                      },
                      "/build.sh"
                    ]
                  ]
                },
                "cwd":"/var/www/html",
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