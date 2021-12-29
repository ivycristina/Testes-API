require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'rspec'
require 'allure-cucumber'
require 'cucumber'

require_relative 'Spec_helper/spec_rest'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")


World(REST)

Cucumber::Core::Test::Step.module_eval do
    def name
      return text if text == 'Before hook'
      return text if text == 'After hook'
      "#{source.last.keyword}#{text}"
    end
end
