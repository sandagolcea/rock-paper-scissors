# Generated by cucumber-sinatra. (2015-01-10 23:26:18 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/rock-paper-scissors.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = RPS

class RPSWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  RPSWorld.new
end
