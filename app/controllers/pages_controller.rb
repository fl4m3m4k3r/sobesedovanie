class PagesController < ApplicationController
  def index
  	unless $redis
  	  $redis = Redis.new
  	end
  end

  def add_string
  	$redis.lpush('data', params[:text])
  	redirect_to root_path
  end
end
