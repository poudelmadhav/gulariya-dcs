class Record < ApplicationRecord
	validates :tr_sn, :sn, :send_date, :kba, :dismn_place, presence: true

	def self.narayan
		count(:received_no)
	end

	def self.madhav
		count(:kba)
	end

	def self.total
		count(:kba) - count(:received_no)
	end
end
