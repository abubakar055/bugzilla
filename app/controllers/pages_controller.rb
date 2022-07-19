class PagesController < ApplicationController
 
  def home
    @projects=Project.all
    if current_user
      @current_user_id=current_user.id
    end
    @project_ids =ProjectUser.where(user_id: @current_user_id).pluck(:project_id)
    @user_projects = Project.where(id: @project_ids)
    #@dev_projects=@developer.@projects
    # @project_developers = @project.get_developer
    # @developers=get_developer.@project
    # @projects= Project.users.where(name: current_user.name)
  end

  def about
  end
end
