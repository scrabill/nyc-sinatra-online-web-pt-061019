class FiguresController < ApplicationController
  # add controller methods

  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  # patch '/figures/new' do
  #   # {"name"=>"Naked Cowboy", "submit"=>"Submit"}
  #   new_figure = Figure.create(params)
  #
  #   redirect "/figures"
  # end

  get '/figures/:id/edit' do
    @figure = Figure.find_by_id(params[:id])
    erb :'figures/edit'
  end

  patch '/figures/edit' do
    @figure = Figure.find_by_id(params[:id])
  end

  get '/figures/:id' do
    @figure = Figure.find_by_id(params[:id])
    erb :'figures/show'
  end

  # get '/figures/new' do
  #   "Hello World"
  # end
end
