package 'httpd'
package 'php'

directory '/var/www/html' do
  owner 'apache'
  group 'apache'
  mode '0664'
  action :create
end

service 'httpd' do
  action [ :enable, :start ]
end
