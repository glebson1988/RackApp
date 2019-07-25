class Formatter

  TIME_FORMATS = { "year"   => "%Y-",
                   "month"  => "%m-",
                   "day"    => "%d ",
                   "hour"   => "%Hh ",
                   "minute" => "%Mm ",
                   "second" => "%Ss" }.freeze

  attr_accessor :status, :body

  def initialize(params)
    @correct = ''
    @incorrect = []
    time_response(params['format'].split(','))
    response
  end

  private

  def response
    if @incorrect.empty?
      self.status = 200
      self.body = Time.now.strftime(@correct)
    else
      self.status = 400
      self.body = "Unknown time format #{@incorrect}"
    end
  end

  def time_response(params)
    params.each do |format|
      TIME_FORMATS[format] ? @correct += TIME_FORMATS[format] : @incorrect << format
    end
  end
end
