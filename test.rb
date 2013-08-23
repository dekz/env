require_relative './env.rb'

Env.hijack!

require 'rake'

p ENV.usages
