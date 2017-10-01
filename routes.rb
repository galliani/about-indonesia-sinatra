current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }


before do
  content_type :json
end


namespace '/v1' do
  before  do 
    is_authorized = request.env['HTTP_AUTHORIZATION'] == ENV['API_SECRET']
  
    halt 401 unless is_authorized
  end

  namespace '/provinces' do
    get '/' do
      puts request.env['HTTP_AUTHORIZATION']
      json Province.select('id', 'name').all
    end

    get '/:id' do
      resource =  Province.find(params[:id])

      if resource
        json resource
      else
        halt 404
      end
    end

    post '/' do
      resource = Province.create(params[:province])

      if resource
        json resource
      else
        halt 500
      end
    end

    delete '/:id' do
      resource = Province.find(params[:id])

      if resource
        resource.destroy
      else
        halt 404
      end
    end
  end
end