# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ahmadhamadeh"
client_key               "#{current_dir}/ahmadhamadeh"
validation_client_name   "ahad-validator"
validation_key           "#{current_dir}/ahad-validator"
chef_server_url          "https://api.opscode.com/organizations/ahad"
cookbook_path            ["#{current_dir}/../cookbooks"]
