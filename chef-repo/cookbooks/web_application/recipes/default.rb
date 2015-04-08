
# Cookbook Name:: web_application
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
docker_image 'ahmadhamadeh/adriano' do
	action :pull
	notifies :redeploy, 'docker_container[app]', :immediately
end

docker_container 'app' do
	image 'ahmadhamadeh/adriano' 
	port '80:8080' 
	detach true 
	container_name 'app' 
end 

# Open port 80 to incoming traffic. 
#firewall_rule 'http' do 
 # port 80 
  #protocol :tcp 
  #action :allow 
#end

