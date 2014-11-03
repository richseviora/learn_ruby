class Timer
  attr_accessor :seconds
  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    hours = (@seconds / (60 * 60)).to_i
    minutes = ((@seconds - hours * 60 * 60) / 60).to_i
    seconds = (@seconds - hours * 60 * 60 - minutes * 60)
    '%02d:%02d:%02d' % [hours, minutes, seconds]
  end
end