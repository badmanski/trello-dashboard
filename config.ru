$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'pry' if ENV['RACK_ENV'] == 'development'
require 'trello_dashboard'

run TrelloDashboard::App
