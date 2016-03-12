StackName = node.default['default']['StackName']
label='echo -ne "\033]0;${USER}@'+StackName+':${PWD/#$HOME/~}\007"'
file '/etc/sysconfig/bash-prompt-xterm' do
  action :create
  mode '0555'
  group 'root'
  owner 'root'
  content label
end

