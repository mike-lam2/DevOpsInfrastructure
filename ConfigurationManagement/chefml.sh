cd /var/chef/chef-repo/cookbooks
chef-client --local-mode --runlist 'recipe[infrastructure::Skeleton]'