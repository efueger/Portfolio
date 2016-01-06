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

    def erb_partial(page, options={})
      erb page, options.merge!(:layout => false)
    end


    
    def partial(page, options={})
      slim page, options.merge!(:layout => false)
    end
  end


  error Sinatra::NotFound do 
    slim :"projects/greenlight"
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

  get('/projects/therapysublet') do 
    slim :"projects/therapysublet"
  end

  get('/projects/cpfmarket') do 
    slim :"projects/cpfmarket"
  end

  get('/projects/kellogguniversity') do 
    slim :"projects/kellogguniversity"
  end

  get('/projects/lifequality') do 
    slim :"projects/lifequality"
  end

  get('/projects/timeapp') do 
    slim :"projects/timeapp"
  end

  get('/projects/bluebutton') do 
    slim :"projects/bluebutton"
  end

  get('/projects/twobirdsonestone') do 
    slim :"projects/twobirdsonestone"
  end

  get('/projects/ketelet') do 
    slim :"projects/ketelet"
  end

  get('/projects/socialmediabridge') do 
    slim :"projects/socialmediabridge"
  end


end
