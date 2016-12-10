source 'https://gems.ruby-china.org'

ruby '2.3.3'

gem 'rails', '~> 5.0.0'
gem 'pg'
gem 'puma'
gem 'rack-cors'
# gem 'active_model_serializers', '~> 0.10.0'
gem 'jsonapi-resources'
# Cronjob schedulers that can be coded in the
# gem 'whenever', require: false
gem 'redis'
# gem "redis-rails"
# gem 'redis-namespace'
gem 'sidekiq'

group :development do
  # gem "capistrano"
  # gem 'capistrano-rails'
  # gem 'capistrano3-puma'
  gem 'listen'
  gem 'rack-mini-profiler', require: false
  gem 'rubocop', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'annotate'
  gem 'awesome_print'
  gem 'bullet'
  gem 'bundler-audit', '>= 0.5.0', require: false
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.5.0'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
end
