# frozen_string_literal: true
require 'time'
require 'date'
class Birthday
  attr_reader :name, :date

  def initialize(name, date)
    @name = name
    @date = Date.parse("#{date}")
  end

  def self.instance
    @bday
  end

  def self.create(name, date)
    @bday = Birthday.new(name, date)
  end

  def message
    now = Date.today
    if @date == now
      return "Happy Birthday"
    else
      return "Your birthday is in (#{@date} - #{now}) days"
    end
  end
end
