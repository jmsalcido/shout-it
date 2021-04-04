require 'rack/test'
require 'rspec'

# set the env to test for all tests.
ENV['APP_ENV'] = 'test'

$LOAD_PATH.push File.expand_path('../app', __dir__)
require 'shoutit'

# TODO: Find a way to include this mixin only when we are testing controllers.
module RSpecControllerMixin
  include Rack::Test::Methods

  def app
    AppController
  end
end

RSpec.configure { |c| c.include RSpecControllerMixin }
