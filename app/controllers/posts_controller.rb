class PostsController < ApplicationController

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(posts_params)
        @post.save
        redirect_to post_path(@post)
    end

    def show
        @post = Post.find(params[:id])
    end

    private
def posts_params
    params.require(:post).permit(:image, :description, :account_id)
end

end
