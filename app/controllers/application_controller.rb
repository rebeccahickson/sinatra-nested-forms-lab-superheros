require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :"super_hero"
    end

    post '/team' do
        @team = params[:team]
        erb :"team"
    end

    get '/team' do
        erb :"team"
    end

end
