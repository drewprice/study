class ArticlesController < ApplicationController
	include ArticlesHelper
	before_filter :require_login, only: [:edit, :update]
	before_action :find_article, only: [:show, :edit, :update, :destroy]

	def index
		@articles = Article.all
	end

	def show
		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def new
		if params[:tag].present?
			@article = Article.new(tag_list: params[:tag])
		else
			@article = Article.new
		end
	end

	def edit
		
	end

	def create
		@article = Article.create(article_params)

		if @article.save
			flash.notice = "'#{@article.title}' was created!"
			redirect_to @article
		else
			render 'new'
		end
	end

	def update
		@article.update(article_params)

		flash.notice = "'#{@article.title}' has been updated."

		redirect_to article_path(@article)
	end

	def destroy
		@article.destroy

		flash.notice = "'#{@article.title}' has been deleted."

		redirect_to articles_path
	end

	private

	def find_article
		@article = Article.find(params[:id])
	end
end
