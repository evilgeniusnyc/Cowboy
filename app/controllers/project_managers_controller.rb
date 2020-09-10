class ProjectManagersController < ApplicationController
    def index 
        @project_managers = ProjectManager.all
    end 

    def show
        @project_manager = ProjectManager.find(params[:id])
    end

    def new
        @project_manager = ProjectManager.new
    end

    # def create 
    #     @project_manager = ProjectManager.create(params[:id]
    # end

    def update 
        @project_manager = ProjectManager.find(params[:id])
        @project_manager.update(project_manager_params)
        redirect_to project_manager.path(@project_manager)
    end 

    private 
    def project_manager_params
        prams.require(prokect_manager).permit(:name, :nickname, :phone, :email, :bio,)
    end 

end



 


