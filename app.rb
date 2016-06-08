require 'sinatra'
require 'paybook'
require 'json'

#instance of paybook class

api = Paybook::Api.new("API KEY GOES HERE")

get '/users' do
	api.user_list['response'].to_json
end

get '/signup' do
	response = api.create_user(params[:usuario])
	response['response'].to_json
end

get '/login' do
	response = api.create_session(params[:id_usuario])
	response['response'].to_json
end

get '/delete/user' do
	response = api.delete_user(params[:id_usuario])
	response.to_json
end