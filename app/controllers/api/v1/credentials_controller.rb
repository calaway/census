module Api::V1
  class CredentialsController < ApiController
    before_action :doorkeeper_authorize!
    respond_to    :json

    def show
      render json: current_resource_owner
    end
  end
end
