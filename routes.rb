current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

before do
  content_type :json
end

namespace '/v1' do
  namespace '/provinces' do
    get '/' do
      json Province.select('id', 'name').all
    end

    get '/:id' do
      resource =  Province.find_by_id(params[:id])

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
      resource = Province.find_by_id(params[:id])

      if resource
        resource.destroy
      else
        halt 404
      end
    end
  end
end