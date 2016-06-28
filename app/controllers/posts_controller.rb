class PostsController < ApplicationController

  def index
  	@posts = client.posts(ENV['HOSTNAME'])['posts']
  end
end
