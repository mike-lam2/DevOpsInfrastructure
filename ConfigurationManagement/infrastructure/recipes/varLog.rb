remote_file '/var/log/buildAttributes.txt' do
  source '/var/chef/chef-repo/cookbooks/infrastructure/attributes/default.rb'
  mode '0444'
  action :create
end

link '/var/www/html/log' do
  to '/var/log'
  link_type :symbolic
end
