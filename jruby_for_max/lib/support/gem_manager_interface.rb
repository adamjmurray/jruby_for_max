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
  manage_gem_in_background :install, *args
end

def uninstall *args
  manage_gem_in_background :uninstall, *args
end

def manage_gem_in_background operation, name, version
  if name=='_NO_GEM_NAME_'
    out1 'status', 'ERROR: enter a gem name'
    return
  end
  if version=='_NO_GEM_VERSION_'
    version = nil
  end

  if @bg_thread
    error "Ignored attempt to #{operation} a gem, because another gem is currently being installed or uninstalled."
    return
  end

  @bg_thread = Thread.new do
    out1 'status', "#{operation}ing #{name} #{version} ..."
    out1 'spinner', 1
    begin
      Gems.send operation, name, version
      out1 'status', ''
    rescue Exception
      out1 'status', "ERROR: see Max console for details"
    ensure
      list
      out1 'spinner', 0
      @bg_thread = nil
    end
  end
end