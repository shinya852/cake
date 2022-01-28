class Admin::GenresController < ApplicationController

  #今回はジャンルページの一覧に新規登録機能の追加を行う
  def index
    @genre = Genre.new(genre_params)
    @genres = Genre.all
  end

  def create
    @genre = Genre.find(params[:id])
    @genre.save
    #以下保存の有無を判定する条件式の追加
  end

  #update追加予定
  private

  def genre_params
    params.require(:genre).permit(:name, :created_at, :updated_at)
  end

end
