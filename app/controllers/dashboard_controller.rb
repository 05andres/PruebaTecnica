class DashboardController < ApplicationController
  def index
    @status= Dashboard.paginate(page: params[:page], per_page: 6)
  end
end