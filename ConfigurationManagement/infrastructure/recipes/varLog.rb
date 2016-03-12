link '/var/www/html/log' do
  to '/var/log'
  link_type :symbolic
end

link '/var/www/html/buildVersion.txt' do
  to '/home/ec2-user/buildVersion.txt'
  link_type :symbolic
end
