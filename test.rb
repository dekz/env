require_relative './env.rb'

Env.hijack!

require 'rake'
require 'pp'

pp ENV.usages
