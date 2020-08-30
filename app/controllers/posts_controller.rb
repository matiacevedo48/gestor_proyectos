class PostsController < ApplicationController
  http_basic_authenticate_with name:"desafiovamoscontodo", password:"XAHTJEAS23123%23", except: :index
  def index
  end

  def create
    @post = Post.create(nombre: params[:nombre], descripcion: params[:descripcion], fecha_comienzo: params[:fecha_comienzo], fecha_termino: params[:fecha_termino], estado: params[:estado])
  end

  def dashboard
    if params[:estado].present?
      @posts = Post.where('estado=?', params[:estado])
    else
      @posts = Post.all
    end
  end
end
