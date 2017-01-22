source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',        '~> 5.0.0', '>= 5.0.0.1'
gem 'pg',           '~> 0.19.0'
gem 'puma',         '~> 3.6', '>= 3.6.2'
gem 'sass-rails',   '~> 5.0', '>= 5.0.6'
gem 'uglifier',     '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks',   '~> 5'
gem 'gravatarify',  '~> 3.0.0'
gem 'auto_html',    '~> 1.6.4'
gem 'jquery-rails'
gem 'public_activity'
gem 'simple_form'
gem 'devise'

gem 'twitter-bootstrap-rails'#, git: 'git://github.com/seyhunak/twitter-bootstrap-rails.git'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'better_errors',     '~> 2.1.1'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'pry-rails',         '~> 0.3.4'
end

group :development do
  gem 'web-console',           '~> 3.4'
  gem 'spring',                '~> 2.0'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'annotate',              '~> 2.7', '>= 2.7.1'
  gem 'sextant',               '~> 0.2.4'
end

group :test do
  gem 'database_cleaner',         '~> 1.5', '>= 1.5.3'
  gem 'factory_girl_rails',       '~> 4.7'
  gem 'simplecov',                '~> 0.12.0',          require: false
  gem 'shoulda-matchers',         '~> 3.1', '>= 3.1.1', require: false
  gem 'rails_best_practices',     '~> 1.17'
  gem 'rspec_candy',              '~> 0.4.1'
  gem 'rspec-rails',              '~> 3.5', '>= 3.5.2'
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.1'
  gem 'rspec-activemodel-mocks',  '~> 1.0', '>= 1.0.3'
  gem 'faker',                    '~> 1.6', '>= 1.6.6'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
#
