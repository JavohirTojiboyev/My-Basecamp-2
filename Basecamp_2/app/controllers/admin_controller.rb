class AdminController < ApplicationController
  def index
    @projects = Project.where('admin_user_id == ?', current_user.id)
  end
end
