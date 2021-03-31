require 'sinatra/base'

Dir.glob('./app/{helpers,controllers}/*.rb').each { |file| require file }

map('/hello') { run HelloController }
