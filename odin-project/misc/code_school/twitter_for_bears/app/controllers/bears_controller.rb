class BearsController < ApplicationController
	before_action :find_bear, only: [:show, :has_tweets]
	before_action :has_tweets, only: :show 

	def find_bear
		@bear = Bear.find(params[:id])
	end

	def create
		@bear = Bear.create(bear_params)
		redirect_to bear_path(@bear)
	end

	def bear_params
		params.required(:bear).permit(:name, :type)
	end

	def show
		respond_to do |format|
			format.html
			format.xml {render xml: @bear}
		end
	end

	def has_tweets
		if @bear.tweets.size < 1
			redirect_to(bears_path)
		end
	end

end