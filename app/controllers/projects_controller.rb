class ProjectsController < ApplicationController
  load_and_authorize_resource
  before_action :set_project, only: %i[show edit destroy update]

  def index
    debugger
    @projects=Project.joins(:manager)
  end

  def show 
  end


  def new
    @project = Project.new
  end


  def edit
  end

  def create
    @project = Project.new(project_params)
   
    respond_to do |format|
        if @project.save
          format.html{redirect_to project_url(@project), notice: "project is created successfully"}
        else
          format.html{render :edit, status: :unprocessable_entity}
        end     
    end
  end


  def update 
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to project_url(@project), notice: "Project was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @project.destroy

    respond_to do |format|
      format.html{redirect_to projects_url, notice: "project was deleted successfully"}
    end

  end

  private
    def project_params
      params.require(:project).permit(:title, :body, :manager_id)
    end

    def set_project
      @project = Project.find(params[:id])
    end
end  
