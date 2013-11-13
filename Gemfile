source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.14'
group :development do 
  gem 'sqlite3'
end
group :production do
  gem 'thin'
  gem 'pg'
end
gem 'mysql2'
gem 'carrierwave'
gem 'event-calendar', :require => 'event_calendar'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'bootstrap-datetimepicker-rails'
gem 'cancan'
gem ‚therubyracer’
gem 'devise'
gem 'figaro'
gem 'rolify'
gem 'simple_form'
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'quiet_assets'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
group :test do
  gem 'capybara'
  gem 'cucumber-rails', :require=>false
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem 'launchy'
end
