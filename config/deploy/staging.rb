set :stage, :staging
set :application, 'community.icfdev.ru'
server 'community.icfdev.ru', user: 'wwwcommunity', port: 234, roles: %w{web app db}
set :rails_env, :staging
set :branch, proc { ENV['BRANCH'] || `git rev-parse --abbrev-ref HEAD`.chomp }
fetch(:default_env).merge!(rails_env: :staging)
