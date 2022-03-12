source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.1'

gem 'rails', '~> 6.1.5'

gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'httparty'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'
gem 'rspec_api_documentation', require: 'rspec_api_documentation/curl'

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'pry-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
