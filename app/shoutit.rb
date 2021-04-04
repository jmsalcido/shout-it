require 'sinatra/base'

if ['development', 'test'].include? ENV['APP_ENV'] then
    require 'pry'
    require 'pry-byebug'
end

# required controllers
require 'controllers/app_controller'
require 'controllers/hello_controller'