require 'rubygems'
require 'sinatra/base'
require 'slim'
require 'sass'

Slim::Engine.set_default_options :sections => false

class App < Sinatra::Base

  set :public, File.join(File.dirname(__FILE__), 'public')
  set :views, File.join(File.dirname(__FILE__), 'views')

  helpers do
    def partial(page, options={})
      haml page, options.merge!(:layout => false)
    end
  end


  get('/') do 
    slim :index
  end

  get('/projects/greenlight') do 
    slim :"projects/greenlight"
  end

  get('/projects/reputationpie') do 
    slim :"projects/reputationpie"
  end

  get('/projects/wantartat') do 
    slim :"projects/wantartat"
  end

  get('/projects/transnode') do 
    slim :"projects/transnode"
  end

  get('/projects/opensublet') do 
    slim :"projects/opensublet"
  end

  get('/projects/cpfmarket') do 
    slim :"projects/cpfmarket"
  end

end
