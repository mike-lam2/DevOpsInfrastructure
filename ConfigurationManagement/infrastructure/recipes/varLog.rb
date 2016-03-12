link '/var/www/html/log' do
  to '/var/log'
  link_type :symbolic
end

link '/var/www/html/buildNumber.txt' do
  to '/home/ec2-user/buildNumber.txt'
  link_type :symbolic
end
