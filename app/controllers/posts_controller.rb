class PostsController < ApplicationController

    def index
       @posts = Post.all
  
    end

    def show
        @post = Post.find(params[:id])
    end

  


    def create
        @post = Post.new(posts_params)
        @post.account_id = current_user.id
        @post.save
        redirect_to post_path(@post.id)
    end

    def new
        @post = Post.new
    end


   

    private
def posts_params
    params.require(:post).permit!
end

end
