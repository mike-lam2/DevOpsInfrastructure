file '/etc/sysconfig/bash-prompt-xterm' do
  action :create
  mode '0555'
  group 'root'
  owner 'root'
  content 'echo -ne "\033]0;${USER}@XXX:${PWD/#$HOME/~}\007"'
end

