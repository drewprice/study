class CommentsController < ApplicationController
	include CommentsHelper
	before_filter :require_login, except: [:create]

	def create
		@comment = Comment.create(comment_params)
		@comment.article_id = params[:article_id]

		if @comment.save
			redirect_to article_path(@comment.article)
		else
			flash.notice = "Uh oh. Your comment didn't save, try again."
			redirect_to article_path(@comment.article)
		end
	end
end
