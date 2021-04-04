$LOAD_PATH.push File.expand_path('app', __dir__)
require 'shoutit'

map('/') { run HelloController }
