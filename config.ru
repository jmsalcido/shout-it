require 'sinatra/base'

$LOAD_PATH.push File.expand_path("../app", __FILE__)
require 'shoutit'

map('/hello') { run HelloController }
