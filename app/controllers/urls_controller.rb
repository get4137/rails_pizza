class UrlsController < ApplicationController
  before_action :authenticate_user!,
                only: %i[edit new create update destroy show index]
  def index
    @urls = current_user.urls
    @status = '200'
    end

  def show
    @url = Url.find(params[:id])
  end

  def new
    @url = Url.new
  end

  def edit
    @url = Url.find(params[:id])
  end

  def create
    @url = current_user.urls.build(url_params)
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
