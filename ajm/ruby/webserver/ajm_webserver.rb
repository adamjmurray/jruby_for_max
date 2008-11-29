require 'java'
require 'webrick'
require 'erb'

class AjmWebServer
  
  @@instances = []
  
  def initialize(config = {})
    @server = WEBrick::HTTPServer.new(config)
    @server.config[:MimeTypes]['rhtml'] = 'text/html'
    @@instances << self
  end
  
  def port
    @server.config[:Port]
  end
  
  def root
    @server.config[:DocumentRoot]
  end
  
  def servlet(*args)
    @server.mount(*args)
  end

  def start
    Thread.new {
      begin
        puts "Starting server on port #{port}"
        puts "Serving files from #{root}"
        @server.start
      rescue 
        error $!
      end
    }
  end

  def stop
    puts "Shutting down server on port #{port} ..."
    @server.shutdown
    while @server.status != :Stop do
      puts '...'
      java.lang.Thread.sleep(500)
    end
    puts "Server on port #{port} stopped\n "
  end   
  
  def self.stop_all
    @@instances.each do |instance|
      instance.stop
    end
  end 
  
end

at_exit { AjmWebServer.stop_all }
