source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'heroku'
gem 'devise'
gem 'minitest'
gem 'cancan'
gem 'rolify'
gem 'activeadmin'
gem 'meta_search', ">=1.1.0.pre"
gem 'skeleton-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test, :development do
	gem 'rspec-rails'
	gem 'factory_girl_rails', ">=3.1.0"
	gem 'capybara'
	gem 'guard-rspec'
	gem 'launchy'
	gem 'turn'
end

group :test do
	gem 'sqlite3'
	gem 'email_spec'
	gem 'cucumber-rails', :require => false
	gem 'database_cleaner'
end

group :production do
	gem 'pg'
	gem 'thin'
end