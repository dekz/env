env
===

Track ENV usage

```ruby
require_relative './env.rb'
Env.hijack!

require 'rake'
require 'pp'

pp ENV.usages

```
```ruby
{"GEM_SKIP"=>
  [{:lineno=>
     "/Users/dekz/.rbenv/versions/2.0.0-p0/lib/ruby/2.0.0/rubygems/core_ext/kernel_gem.rb:33:in `gem'",
    :value=>nil}],
 "GEM_HOME"=>
  [{:lineno=>
     "/Users/dekz/.rbenv/versions/2.0.0-p0/lib/ruby/2.0.0/rubygems/path_support.rb:24:in `initialize'",
    :value=>nil},
   {:lineno=>
     "/Users/dekz/.rbenv/versions/2.0.0-p0/lib/ruby/2.0.0/rubygems/path_support.rb:24:in `initialize'",
    :value=>nil}],
 "GEM_PATH"=>
  [{:lineno=>
     "/Users/dekz/.rbenv/versions/2.0.0-p0/lib/ruby/2.0.0/rubygems/path_support.rb:30:in `initialize'",
    :value=>nil},
   {:lineno=>
     "/Users/dekz/.rbenv/versions/2.0.0-p0/lib/ruby/2.0.0/rubygems/path_support.rb:30:in `initialize'",
    :value=>nil},
   {:lineno=>
     "/Users/dekz/.rbenv/versions/2.0.0-p0/lib/ruby/2.0.0/rubygems/path_support.rb:51:in `path='",
    :value=>nil}],
 "RUBY"=>
  [{:lineno=>
     "/Users/dekz/.rbenv/versions/2.0.0-p0/lib/ruby/gems/2.0.0/gems/rake-10.0.4/lib/rake/file_utils.rb:9:in `<module:FileUtils>'",
    :value=>nil}],
 "ENV_TEST"=>
  [{:lineno=>"test.rb:8:in `<main>'", :value=>nil},
   {:lineno=>"test.rb:9:in `<main>'", :value=>"TEST"},
   {:lineno=>"test.rb:10:in `<main>'", :value=>"TEST"}]}

```
