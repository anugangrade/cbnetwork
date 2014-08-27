class Advertise < ActiveRecord::Base
  belongs_to :branch
  belongs_to :zone
  belongs_to :cateogry
  belongs_to :subcateogry
  
end
