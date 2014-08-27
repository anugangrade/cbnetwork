class Subcateogry < ActiveRecord::Base
  belongs_to :cateogry
  has_many :stores
  has_many :advertises

  validates :unique_url_string, uniqueness: true , presence: true       
end
