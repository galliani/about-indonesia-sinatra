current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

before do
  content_type :json
end

get '/provinces/' do
  json Province.select('id', 'name').all
end

get '/provinces/:id' do
  resource =  Province.find_by_id(params[:id])

  if resource
    json resource
  else
    halt 404
  end
end

post '/provinces/' do
  resource = Province.create(params[:province])

  if resource
    json resource
  else
    halt 500
  end
end

delete '/provinces/:id' do
  resource = Province.find_by_id(params[:id])

  if resource
    resource.destroy
  else
    halt 404
  end
end