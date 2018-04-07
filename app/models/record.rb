class Record < ApplicationRecord
	validates :tr_sn, :send_date, :kba, :dismn_place, presence: true

	self.per_page = 50

	def self.madhav
		count(:id)
	end
end
