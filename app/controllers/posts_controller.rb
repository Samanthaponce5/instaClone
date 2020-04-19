class PostsController < ApplicationController

    def index
        @posts = Post.of_followed_accounts(current_user.following).order('created_at DESC')
  
    end

    def show
        @post = Post.find(params[:id])
        @comment = @post.comments
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

    def destroy
        @post = Post.find(params[:id])
        if @post.present?
        @post.destroy
        redirect_to profile_path(current_user)
        end
    end
   

    private
def posts_params
    params.require(:post).permit!
end

end
