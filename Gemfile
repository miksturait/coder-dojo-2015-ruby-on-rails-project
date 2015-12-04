source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails', github: "rails/rails"
gem 'sprockets-rails', github: "rails/sprockets-rails"
gem 'sprockets', github: "rails/sprockets"
gem 'sass-rails', github: "rails/sass-rails"
gem 'arel', github: "rails/arel"
gem 'rack', github: "rack/rack"

gem 'pg'

gem 'puma'
gem 'rails_12factor', group: :production

# Use ActiveModelSerializers to serialize JSON responses
gem 'active_model_serializers', '~> 0.10.0.rc2'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails', github: 'rspec/rspec-rails'
  gem 'rspec-core', github: 'rspec/rspec-core'
  gem 'rspec-support', github: 'rspec/rspec-support'
  gem 'rspec-expectations', github: 'rspec/rspec-expectations'
  gem 'rspec-mocks', github: 'rspec/rspec-mocks'
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Loading the listen gem enables an evented file system monitor. Check
  # https://github.com/guard/listen#listen-adapters if on Windows or *BSD.
  gem 'listen', '~> 3.0.5'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
