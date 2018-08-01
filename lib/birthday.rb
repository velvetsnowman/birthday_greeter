# frozen_string_literal: true
require 'time'
class Birthday
  attr_reader :name, :date

  def initialize(name, date)
    @name = name
    @date = date
  end

  def self.instance
    @bday
  end

  def self.create(name, date)
    @bday = Birthday.new(name, date)
  end

  def message
    now = Time.now
    if @date == now.strftime("%d/%m")
      return "Happy Birthday"
    else
      return "Your birthday is in xxx days"
    end
  end
end
