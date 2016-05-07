source 'http://rubygems.org'

ruby '2.3.1'
gem 'rails', '4.2.6'
gem 'pg'
gem 'fog'
gem 'routing-filter', '~> 0.5.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :development, :test do
	gem 'sqlite3'
	gem 'byebug'
	gem 'capybara'
	gem 'haml-rails'
end

group :test do
	gem 'database_cleaner'
	gem 'rspec-rails'
	gem 'autotest'
end

group :production do
	gem 'rack-www'
end

# Foreman: To run Nginx and Unicorn
gem 'unicorn'
gem 'foreman'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 5.0'
  gem 'coffee-rails', '~> 4.1.0'
  gem 'compass-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.3.0'
end

gem 'thin'
gem 'haml'
gem 'turbolinks'
gem 'jquery-rails'

gem 'annotate'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
