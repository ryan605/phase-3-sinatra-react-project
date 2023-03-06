class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "DA BEGINNING!" }.to_json
  end

  get "/hello" do
    "hello world!"
  end

  get '/users' do
    user = User.last(20)
    user.to_json
  end

  get '/projects' do
    projects = Project.last(10)
    projects.to_json
  end

  post '/projects'do
    project = Project.create(
      title: params[:title],
      description: params[:description],
      repo_url: params[:repo_url]
  )
  project.to_json
  end

  post '/users' do 
    new_user = User.create(
      email: params[:email],
     password: params[:password],
     first_name: params[:first_name],
      last_name: params[:last_name]
    )
    if new_user.valid?
    session[:user_id] = new_user.id
    new_user.to_json
    redirect "http://localhost:9292/projects"
    else
      {error: error}
    end
  end
  delete '/projects/:id' do
    project = Project.find(params[:id])
    project.destroy
    project.to_json
  end

end

