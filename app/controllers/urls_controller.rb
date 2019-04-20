class UrlsController < ApplicationController
  before_action :authenticate_user!, :only => [:edit, :new, :create, :update, :destroy]
  def index
    @urls = Url.all
  end
  def show
    @url = Url.find(params[:id])
  end
  def new
    @urls = Url.all
    @url = Url.new
  end
  def edit
    @url = Url.find(params[:id])
  end
  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to @url
    else
      render 'new'
    end
  end
  def update
    @url = Url.find(params[:id])
    if @url.update(url_params)
      redirect_to @url
    else
      render 'edit'
    end
  end
  def destroy
    @url = Url.find(params[:id])
    @url.destroy
    redirect_to urls_path
  end
  private
  def url_params
    params.require(:url).permit(:old_url, :new_url)
  end

end

