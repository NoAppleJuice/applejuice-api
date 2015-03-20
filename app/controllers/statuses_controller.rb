class StatusesController < ApplicationController
  before_action :authenticate_user_from_token!

  def givestatus
    @status = current_user.statuses.build(status_params)
      if @status.save
        render json:{status: @status}
      else
        render json: {status: @status.errors}
    end
  end

  def status_params
    params.require(:status).permit(:charging, :level, :lat, :lng)
  end
end