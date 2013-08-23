class Env
  attr_accessor :usages
  def initialize env
    @env = env
    @usages = Hash.new { |h,k| h[k] = [] }
  end

  def [] name
    val = perform :[], name
    add_usage name, sweet_data(val)
    val
  end

  def []= name, val
    val = perform :[]=, name, val
    add_usage name, sweet_data(val)
    val
  end

  def perform name, *args, &block
    @env.send name, *args, &block
  end

  def self.hijack!
    a = ENV
    Object.send(:remove_const, :ENV)
    Object.const_set :ENV, Env.new(a)
  end

  private
  def sweet_data val
    { :lineno => caller[1], :value => val }
  end

  def add_usage name, usage
    @usages[name] << usage
  end

  alias :method_missing :perform
end

