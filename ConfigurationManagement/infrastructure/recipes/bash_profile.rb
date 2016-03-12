file '/home/ec2-user/.bash_profile' do
  action :create
  group 'ec2-user'
  owner 'ec2-user'
  content '
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:.
PS1=\'.../${PWD##*/} \> \'


export PATH
export PS1
'
end