class TweetsController < ApplicationController
	before_action :get_tweet, only: [:show, :edit]
	before_action :check_auth, only: [:edit]

	def get_tweet
		@tweet = Tweet.find(params[:id])
	end

	def check_auth
		if session[:bear_id] != @tweet.bear_id
			redirect_to(tweets_path, notice: "Sorry, you can't edit this tweet.")
		end
	end

	def show
		respond_to do |format|
			format.html #show.html.erb
			format.json {render json: @tweet}
			format.xml {render xml: @tweets}
		end
	end

	def edit

	end
end