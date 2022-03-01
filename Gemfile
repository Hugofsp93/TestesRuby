source 'https://rubygems.org'
ruby "2.4.5"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# gem 'rails', '5.0.0'
gem 'rails', '5.2.1'

# gem "httparty"

# nested_fields
gem "cocoon"

#File management
# gem 'paperclip'
# gem 'aws-sdk', '>= 2.0.0'
gem "aws-sdk-s3", require: false
gem 'image_processing', '~> 1.12'

#PaperTrail to track any changes on tables
gem 'paper_trail'

gem 'puma'
gem 'annotate'
# gem 'redis'

#User Roles
gem "rolify"

# better timezone info
gem 'tzinfo'
gem 'tzinfo-data'

# Fast json generation
gem 'oj'

# Error catching with errbit
gem 'airbrake-ruby', '1.3.1'
gem 'airbrake', '5.3.0'

#Excel handling (import only)
# gem 'roo', '1.13.2'

#Excel handling (export only)
# gem 'axlsx_rails', '~> 0.3.0'
# gem 'rubyzip', '~> 1.0.0'

#PDF Generation
# gem 'wicked_pdf'
# gem 'wkhtmltopdf-binary'


#Env file with figaro
gem 'figaro'

# Nested forms
gem "cocoon"

#Pagination
gem "will_paginate"

#Authorization Control
gem "cancancan"

#Easy forms
# gem 'simple_form', '~> 3.1.0.rc1'
gem 'formtastic'

#Authentication Control
gem 'devise'

#Full text search
gem 'pg_search'

gem 'i18n'

# gem 'rails-i18n', github: 'svenfuchs/rails-i18n', branch: 'rails-4-x' # For 4.x
gem 'devise-i18n-views'


#choosing where to display validation error message
gem 'dynamic_form'

group :production do
  gem 'pg'
  gem 'thin'
  gem 'taps'
  gem 'rvm'
  gem 'rails_12factor'
end

group :development, :test do
  # gem 'sqlite3'
  # gem 'byebug'
  gem 'simplecov', require: false
  gem 'byebug', platform: :mri
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'rspec-rails', '~> 3.6'
  gem 'capybara'
  gem 'selenium-webdriver', '~> 3.142.6'
  # gem 'chromedriver-helper' # deprecated
  gem 'webdrivers', '~> 4.0'
  gem 'spring-commands-rspec'
  gem 'factory_bot_rails', '~> 4.0'
  gem 'faker'
  gem 'cpf_faker'
  gem 'shoulda-matchers', '~> 3.1'
end

# Use SCSS for stylesheets
# gem 'sass-rails', '~> 5.0'
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
# gem 'uglifier', '>= 1.3.0'
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
# gem 'coffee-rails', '~> 4.2'
gem 'coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 1.2'
gem 'jbuilder', '>=2.6.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

	# Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
gem 'web-console', group: :development
gem 'listen', '~> 3.0.5'
	# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring'
# gem 'spring-watcher-listen', '~> 2.0.0'
gem 'spring-watcher-listen'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
