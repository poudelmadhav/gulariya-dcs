class TransformerPagesController < ApplicationController
	def send_transformer
		@records = Record.all.order('sn ASC').paginate(:page => params[:page])
	end

	def received_transformer
		@contents = Content.all.order('sn ASC').paginate(:page => params[:page])
	end

	def remaining_transformer
	end
end
