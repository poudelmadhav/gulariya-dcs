class TransformerPagesController < ApplicationController
	def send_transformer
		@records = Record.all.order('updated_at DESC').paginate(:page => params[:page])
	end

	def received_transformer
		@contents = Content.all.order('updated_at DESC').paginate(:page => params[:page])
	end

	def remaining_transformer
	end
end
