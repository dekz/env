require_relative './env.rb'

Env.hijack!

require 'rake'
require 'pp'

ENV['ENV_TEST']
ENV['ENV_TEST'] = 'TEST'
ENV['ENV_TEST']
pp ENV.usages
