require_relative 'formatter'

class App

  def call(env)
    @request = Rack::Request.new(env)
    if @request.path_info == '/time'
      formatter = Formatter.new(@request.params)
      if formatter.incorrect.empty?
        answer(200, Time.now.strftime(formatter.correct))
      else
        answer(400, "Unknown time format #{formatter.incorrect}")
      end
    else
      answer(404, "Page not found")
    end
  end

  private

  def answer(status, body)
    [status, { 'Content-Type' => 'text/plain' }, [body]]
  end
end
