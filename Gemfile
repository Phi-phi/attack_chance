source 'https://rubygems.org'


# Ruby Version Checker
target = "2.2.2"    # 最低これ
if Gem::Version.new(RUBY_VERSION.dup) < Gem::Version.new(target)
  puts "Use ruby #{target}+ (Your version is #{RUBY_VERSION})"
  exit(1)
else
  puts "Using ruby #{RUBY_VERSION}..."
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'grape'
gem 'grape-swagger-rails'
gem 'grape-entity' # リクエストやレスポンスをモデルと紐付ける
gem 'grape-swagger-entity'
gem 'grape-swagger'
gem 'grape-swagger-representable'
gem 'grape-rails-routes'

gem 'simple_enum', '~> 2.0.0' , require: 'simple_enum/mongoid'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # See https://github.com/rails/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  # Use RSpec for testing
  gem 'rspec-rails'
  # Use Factory Girl for automated testing
  gem 'factory_girl_rails'

  # DotEnv for environmental values
  gem 'dotenv-rails'

end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller' 
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Use pry as console
  gem 'super-pry-rails'
  # Rails ERD図を作ってくれる
  gem 'rails-erd'
end

group :doc do
  gem 'yard'#, require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
