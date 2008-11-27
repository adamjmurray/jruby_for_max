class OutputToMax < WEBrick::HTTPServlet::AbstractServlet
  def initialize(server, root)
    super
    @root = root
  end
  def do_GET(request, response)
    request.query.to_a.each do |pair|
      out0 pair
    end
    response['Content-Type'] = 'text/html'
    response.body = open "#{@root}/web/to_max.html" do |file| 
      file.read
    end
  end
  alias do_POST do_GET
end

class SourceViewer < WEBrick::HTTPServlet::AbstractServlet
  def initialize(server, root)
    super
    @root = root
  end
  def do_GET(request, response)
    response['Content-Type'] = 'text/plain'
    response.body = open "#{@root}#{request.path_info}" do |file| 
      file.read
    end
  end
  alias do_POST do_GET
end