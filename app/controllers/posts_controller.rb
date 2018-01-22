class PostsController < ApplicationController
    include Authentication
    
    def index
        @posts = Post.all.order(updated_at: :desc)
    end

end
