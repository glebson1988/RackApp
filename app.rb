require_relative 'formatter'

class App

  def call(env)
    @request = Rack::Request.new(env)
    return answer(404, 'Page not found') unless @request.path_info == '/time'

    formatter = Formatter.new(@request.params)
    answer(formatter.status, formatter.body)
  end

  private

  def answer(status, body)
    [status, { 'Content-Type' => 'text/plain' }, [body]]
  end
end
