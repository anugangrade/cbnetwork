class Branch < ActiveRecord::Base
  belongs_to :store
  has_many :advertises
end
