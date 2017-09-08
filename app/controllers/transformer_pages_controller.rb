class TransformerPagesController < ApplicationController
	def send_transformer
		@records = Record.all.paginate(:page => params[:page])
	end

	def received_transformer
		@contents = Content.all.paginate(:page => params[:page])
	end

	def remaining_transformer
	end
end
