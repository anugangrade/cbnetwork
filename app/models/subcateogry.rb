class Subcateogry < ActiveRecord::Base
  belongs_to :cateogry
  has_many :stores
  validates :unique_url_string, uniqueness: true , presence: true       
end
