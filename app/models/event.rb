class Event < ActiveRecord::Base
  attr_accessible :description, :previous_attributes, :public_id, :status
end
