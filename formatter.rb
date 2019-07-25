class Formatter

  TIME_FORMATS = { "year"   => "%Y-",
                   "month"  => "%m-",
                   "day"    => "%d ",
                   "hour"   => "%Hh ",
                   "minute" => "%Mm ",
                   "second" => "%Ss" }.freeze

  attr_reader :correct, :incorrect

  def initialize(params)
    @correct = ''
    @incorrect = []
    time_response(params['format'].split(','))
  end

  private

  def time_response(params)
    params.each { |format| TIME_FORMATS[format] ? @correct += TIME_FORMATS[format] : @incorrect << format }
  end
end