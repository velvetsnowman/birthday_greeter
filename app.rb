# frozen_string_literal: true

require 'sinatra/base'
require './lib/birthday.rb'

class BirthdayApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @result = Birthday.create(params[:persons_name], params[:persons_bday])
    redirect '/greeter'
  end

  before do
    @result = Birthday.instance
  end
  get '/greeter' do
    erb(:greeter)
  end

  run! if app_file == $PROGRAM_NAME
end
