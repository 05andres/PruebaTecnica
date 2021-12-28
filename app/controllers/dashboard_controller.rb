class DashboardController < ApplicationController
  def index
    @status= Dashboard.paginate(page: params[:page], per_page: 5)
  end
end