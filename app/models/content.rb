class Content < ApplicationRecord
	validates :tr_sn, :sn, :received_date, :kva, :install_place, presence: true

	def self.narayan
		count(:kva)
	end	
end
