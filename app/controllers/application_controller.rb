class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/hello" do
    "hello world!"
  end

  get '/users' do
    user = User.all
    user.to_json
  end
end
