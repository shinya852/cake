class Admin::GenresController < ApplicationController

 #beforeアクション追加予定
 #今回はジャンルページの一覧に新規登録機能の追加を行う
 def index
    @genre = Genre.new
    @genres = Genre.all
 end

 def create
    @genre = Genre.new(genre_params)
    if @genre.save
     redirect_to admin_genres_path
    else
     redirect_to
    end
 end

 def edit
    @genre = Genre.find(params[:id])
 end

 def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
     redirect_to admin_genres_path
    else
     render 'edit'
    end
 end

 private

 def genre_params
    params.require(:genre).permit(:name, :created_at, :updated_at)
 end

end
