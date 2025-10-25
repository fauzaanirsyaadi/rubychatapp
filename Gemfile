source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Framework
gem 'rails', '~> 7.2', '>= 7.2.1'

# Database
gem 'pg', '>= 1.5'

# App server
gem 'puma', '~> 6.4'

# Assets (Sprockets pipeline)
gem 'sassc-rails'
gem 'terser'

# Frontend
gem 'coffee-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jquery-rails', '>= 4.6'
gem 'bootstrap', '>= 5.0'

# Utilities
gem 'jbuilder', '~> 2.12'
gem 'pusher', '>= 2.0'
gem 'figaro', '>= 1.2'

# Windows tzinfo data
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'wdm', '>= 0.1.0' if Gem.win_platform?

group :development, :test do
  gem 'debug', '>= 1.9'
  gem 'rspec-rails', '~> 6.0'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 3.2'
end

group :test do
  gem 'shoulda-matchers', '~> 5.3'
  gem 'database_cleaner-active_record', '~> 2.1'
end

group :development do
  gem 'web-console', '>= 4.2'
  gem 'listen', '>= 3.8'
  gem 'bootsnap', '>= 1.18', require: false
end