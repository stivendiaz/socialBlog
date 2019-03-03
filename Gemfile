source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 5.1.6'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap', '~> 4.1.1'
gem 'jquery-rails'
gem "font-awesome-rails"
gem 'devise'
gem 'gravatar-ultimate'
gem 'rails-i18n', '~> 5.1'
gem 'devise-i18n'
gem 'pry'
gem 'redcarpet'
gem 'xmlrpc'


group :development, :test do
  gem 'sqlite3', git: "https://github.com/larskanis/sqlite3-ruby", branch: "add-gemspec"
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'annotate'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
group :production do
  gem 'rails_12factor'
  gem 'pg'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
