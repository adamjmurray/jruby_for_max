require 'jruby_for_max/gem_manager'
Gems = JRubyForMax::GemManager

def env
  out0 'env', 'GEM_HOME', ENV['GEM_HOME']
  out0 'env', 'GEM_PATH', ENV['GEM_PATH']
end

def list
  gems_by_name = Hash.new{|h,k| h[k] = []}
  Gems.list.each{|gem| gems_by_name[gem.name] << gem.version.to_s }

  out0 'gems', gems_by_name.keys.size
  gems_by_name.each do |name, versions|
    out0 'gem', name, versions.join(',  ')
  end
  out0 'done'
end

def install *args
  name,version = *args
end
