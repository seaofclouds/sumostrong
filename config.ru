require "bundler/setup"
Bundler.require

require './main'

disable :logging unless defined?(Thin)
run App