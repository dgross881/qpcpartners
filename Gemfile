source 'http://rubygems.org'

ruby '2.3.1'

# Update Dockerfile if you change the Rails version
gem 'rails', '5.0.0.1', '< 5.1'
gem 'pg'

#css
gem 'bootstrap-sass'
gem 'bootstrap-colorpicker-rails'
gem 'font-awesome-rails'
gem 'autoprefixer-rails'
gem 'dotenv-rails'

gem 'routing-filter', branch: 'rails5-final'

#admin
gem 'administrate', github: 'thoughtbot/administrate', branch: 'rails-5'
gem 'bourbon'
gem "ckeditor"

#editing
gem "phrasing", branch: 'new-release-4'
gem "haml"

#images
gem 'paperclip'
gem "fog-google"
gem "google-api-client"
gem "mime-types"

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
	gem 'sqlite3'
	gem 'byebug'
	gem 'capybara'
end

#login && authorization
gem 'devise'
gem 'cancancan' # updated 'cancan'

group :test do
	gem 'database_cleaner'
	gem 'rspec-rails'
	gem 'autotest'
end


group :production do
  gem 'puma'
  gem 'rails_12factor'
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
