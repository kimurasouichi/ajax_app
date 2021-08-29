class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC") #オーダーメソッドのオプション最新のものから表示する
  end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }
  end
end