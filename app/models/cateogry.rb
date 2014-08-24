class Cateogry < ActiveRecord::Base
	has_many :subcateogries
	has_many :stores
	validates :unique_url_string, uniqueness: true , presence: true       
		
end
