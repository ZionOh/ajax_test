class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    def show 
        post = Post.find(params[:id])
        render json: {title: post.title, desc: post.desc}
    end
    def create
        post = Post.create(title: params[:title], 
        desc: params[:desc], lat: params[:lat], lng: params[:lng])
    
        render json: {post_id: post.id, lat: post.lat.to_f, lng: post.lng.to_f}        
    end
end
