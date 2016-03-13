package 'httpd'
package 'php'

directory '/var/www/html' do
  owner 'apache'
  group 'apache'
  mode '0775'
  action :create
end

service 'httpd' do
  action [ :enable, :start ]
end
