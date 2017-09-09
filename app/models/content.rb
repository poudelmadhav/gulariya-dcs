class Content < ApplicationRecord
	validates :tr_sn, :sn, :received_date, :kva, :install_place, presence: true

	self.per_page = 50
	
	def self.narayan
		count(:id)
	end	
end
