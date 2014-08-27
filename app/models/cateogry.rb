class Cateogry < ActiveRecord::Base
	has_many :subcateogries
	has_many :stores
	has_many :advertises

	validates :unique_url_string, uniqueness: true , presence: true       
		
end
