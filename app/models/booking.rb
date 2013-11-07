class Booking < ActiveRecord::Base
    belongs_to :room, inverse_of: :bookings
    belongs_to :hotel, inverse_of: :bookings
    belongs_to :person, inverse_of: :bookings
    belongs_to :group, inverse_of: :bookings
  attr_accessible :dateFrom, :dateTo, :group_id, :hotel_id, :person_id, :room_id
  
  validate :dates_must_not_overlap
  before_validation :add_correct_time_to_date
  
  def add_correct_time_to_date
      self.dateFrom = self.dateFrom.beginning_of_day
      self.dateTo = self.dateTo.end_of_day
  end
  def validate
      flash["invalid date range"] if self.dateFrom > self.dateTo or self.dateTo < self.dateFrom
      # self.errors.add(:base,"Invalid date range") if self.dateFrom > self.dateTo or self.dateTo < self.dateFrom
      # flash("nie dziala")
      # flash.now[:error]
      # flash[:error]
  end
  def dates_must_not_overlap
      # if i'm editing a record, don't include itself in the overlap check
      if self.new_record?
          overlapping_events = Booking.find(:all, :conditions => ["(((? >= dateFrom and ? <= dateTo) or (? >= dateFrom and ? <= dateTo) or (? <= dateFrom and ? >= dateTo)) and room_id = ? )", self.dateFrom, self.dateFrom, self.dateTo, self.dateTo, self.dateFrom, self.dateTo, self.room_id])
          else
          overlapping_events = Booking.find(:all, :conditions => ["(((? >= dateFrom and ? <= dateTo) or (? >= dateFrom and ? <= dateTo) or (? <= dateFrom and ? >= dateTo)) and room_id = ? and id != ?", self.dateFrom, self.dateFrom, self.dateTo, self.dateTo, self.dateFrom, self.dateTo, self.room_id, self.id])
      end
      #      self.flash(["dupa"])
      #if it found overlapping Bookings, throw an error
      if overlapping_events.size > 0
          event_titles = []
          for booking in overlapping_events
              event_titles << booking.dateFrom
          end
          self.errors.add(:base,"Date range overlaps with these Bookings: #{event_titles.join(', ')}")
      end
  end
  
  
  
  
end
