class Event < ActiveRecord::Base
    has_event_calendar
  attr_accessible :end_at, :name, :start_at
  
  def event_range
      (start_at .. end_at).each { |date| puts date }
  end
  
  def start_day
      start_at.wday
  end
  
end
