default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:taskwombat][:git_repository] = "https://github.com/brillantewang/taskwombat/"
default[:taskwombat][:git_revision] = "master"
default[:taskwombat][:path] = "/opt/taskwombat"

default[:taskwombat][:rails_env] = "production"
default[:taskwombat][:log_to_stdout] = "true"

default[:taskwombat][:environment] = {
  "SECRET_KEY_BASE": node[:taskwombat][:secret_key_base],
  "DATABASE_URL": node[:taskwombat][:database_url],
  "RAILS_ENV": node[:taskwombat][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:taskwombat][:log_to_stdout]
}

default[:taskwombat][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
