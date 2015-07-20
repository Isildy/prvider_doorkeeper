module Api::V1
  class ProfilesController < ApiController
    before_filter :doorkeeper_authorize!
   # doorkeeper_for :index
   # doorkeeper_for :create, :scopes => [:write]

    respond_to :json

    def index
      respond_with Profile.recent
    end

    def create
      respond_with 'api_v1', Profile.create!(params[:profile])
    end
  end
end
