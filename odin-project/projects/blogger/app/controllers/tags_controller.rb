class TagsController < ApplicationController
	include TagsHelper
	before_filter :require_login, only: [:destroy]

	before_action :find_tag, only: [:show, :destroy]

	def index
		@tags = Tag.all
	end

	def show
		
	end

	def destroy
		@tag.destroy

		flash.notice = "The '#{@tag.name}' tag has been deleted."

		redirect_to tags_path
	end
end
