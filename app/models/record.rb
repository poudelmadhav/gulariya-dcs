class Record < ApplicationRecord
	validates :tr_sn, :sn, :send_date, :kba, :dismn_place, presence: true
	validates_uniqueness_of :sn

	self.per_page = 50

	def self.madhav
		count(:id)
	end
end
