class Store < ActiveRecord::Base
  belongs_to :user
  belongs_to :subcateogry
  belongs_to :cateogry
  has_many :branches
end
