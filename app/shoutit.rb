# frozen_string_literal: true

require 'sinatra/base'

if %w[development test].include? ENV['APP_ENV']
  require 'pry'
  require 'pry-byebug'
end

# required controllers
require 'controllers/app_controller'
require 'controllers/hello_controller'
