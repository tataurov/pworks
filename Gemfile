source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Bootstrap framework
gem 'bootstrap-sass', '~> 3.2.0'
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.14.30'
gem 'bootstrap-typeahead-rails'
gem 'autoprefixer-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'sprockets', '2.12.3'
gem 'tilt', '1.4.1'

# Use ActiveAdmin
gem 'rails_admin'
gem 'paperclip'
gem 'ack_rails_admin_jcrop'

# rich text editor
# gem 'ckeditor'

# Use Devise for authentication
gem 'devise'
gem 'devise-bootstrap-views'

# Authorization abilities
gem 'cancancan', '~> 1.10'

# Search Engine Optimization plugin
gem 'meta-tags'

# Decorator
gem 'draper'

gem 'hstore_accessor'
gem 'slim-rails'
gem 'haml'

# Normalize AR attributes
gem 'attribute_normalizer'
gem 'attr_extras', '>= 3.2.0'

# Angular js
gem 'angularjs-rails'
gem 'angular-rails-templates'
gem 'listen', '~> 2.7'
gem 'angular-ui-bootstrap-rails'

group :development, :test do
  gem 'letter_opener'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Rspec
  gem 'rspec-rails', '~> 3.0'
  gem 'rspec-given'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'json_spec'
  gem 'simplecov', :require => false
  gem 'byebug'

  # Deploy features
  gem 'capistrano'
  gem 'capistrano-db-tasks', require: false
  gem 'capistrano-nginx-unicorn'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'sshkit-sudo'
end

# Use unicorn as the app server
group :production do
  gem 'unicorn'
  gem 'unicorn-worker-killer'
end

group :development do
  gem 'web-console', '~> 2.0'
end