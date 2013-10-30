class Stay < ActiveRecord::Base
  belongs_to :person, inverse_of: :stays
  belongs_to :group, inverse_of: :stays
  attr_accessible :check_in, :check_out, :group_id, :person_id
  

end
