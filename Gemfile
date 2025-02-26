source 'https://rubygems.org'

ruby '2.6.6'
gem 'rails', '4.2.11'

gem 'sass-rails', '~> 5.0.3'
gem 'uglifier', '>= 2.7.1'
gem 'jquery-rails'
gem 'bcrypt', '~> 3.1.7'
gem 'puma' # ใช้ Puma เป็น Web Server
gem 'pg', '~> 1.5' # PostgreSQL ใช้ได้ทุก environment

group :development, :test do
  gem 'byebug'
  gem 'database_cleaner'
  gem 'cucumber-rails', require: false
  gem 'rspec-rails'
  gem 'pry'
  gem 'pry-byebug'

  # ใช้ dotenv เพื่อโหลด Environment Variables ใน Local Development
  gem 'dotenv-rails'

  # ใช้ sqlite3 เฉพาะ development & test เท่านั้น
  gem 'sqlite3', '~> 1.4.2'
end

group :development do
  # Access an IRB console on exception pages
  gem 'web-console', '~> 2.0'
end

group :production do
  gem 'rack-timeout', '~> 0.6.0' # ป้องกัน request timeout
end
