source 'https://rubygems.org'
ruby '2.1.3'
#ruby-gemset=bigd

gem 'rails', '4.1.6'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'devise'
gem 'jquery-turbolinks'
gem 'jquery-ui-rails'



group :production do
	gem 'pg'
	gem 'rails_12factor'
end

group :development, :test do
	gem 'rspec-rails', '~> 3.0.0'
	gem 'capybara'
	gem 'sqlite3'
end

group :development do
	# gem 'rb-fsevent' if `uname` =~ /Darwin/
	gem 'guard'
	gem 'guard-rspec', require: false
	gem 'spring'
  gem 'better_errors'
  gem "binding_of_caller"
end

