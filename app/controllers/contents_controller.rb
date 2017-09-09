class ContentsController < ApplicationController
	def index
		# @contents = Content.all.order('created_at DESC').paginate(:page => params[:page])
	end

	def create
		@content = Content.create(content_params)
		if @content.valid?
	    	flash[:success] = "A record has been successfully created!"
	    	redirect_to received_transformer_path
	 	else
	    	flash[:alert] = "Woops! Looks like there has been an error!"
	    	redirect_to new_content_path
	 	end
	end

	def edit
	  # @content = Content.find(params[:id])
	end

	def update
	  # @content = Content.find(params[:id])
	  # if @content.update(content_params)
	  # 	flash[:success] = "A record has been successfully updated!"
	  #   redirect_to received_transformer_path
	  # else
	  # 	flash[:alert] = "Woops! Looks like there has been an error!"
	  #   redirect_to edit_content_path(params[:id])
	  # end
	end

	def destroy
	  # @content = Content.find(params[:id])
	  # @content.destroy
	  # flash[:success] = "The record was successfully deleted!"
	  # redirect_to received_transformer_path
	end

	private

	def content_params
		params.require(:content).permit(:received_no, :sn, :company_name, :kva, :tr_sn, :received_date, :install_place, :remarks)
	end
end
