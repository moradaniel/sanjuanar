source 'https://rubygems.org'

gem 'rails', '3.2.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'

gem 'geocoder' #To encode latitude and longitude

gem 'devise', '~> 1.4.3' #users management

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'dynamic_form'     # For showing form errors
gem 'jquery-rails'

group :test, :development do
  gem 'rspec-rails', '~> 2.5'
end

group :test do
  gem 'cucumber-rails'  , '1.0.6'     #this version is compatible with the one used in "Rails in Action" book
  gem 'capybara', '1.1.2'
  gem 'database_cleaner'

  #Factories allow to create new example objects for all of your models in a simple
  #and elegant syntax.
  gem 'factory_girl',  '2.1.0'
  gem 'email_spec'
end

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
