package 'httpd'
package 'php'

service 'httpd' do
  action [ :enable, :start ]
end
