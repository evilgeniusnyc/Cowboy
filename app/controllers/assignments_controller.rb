class AssignmentsController < ApplicationController
   def index 
    @assignments = Assignments.all 
   end

   def show 
    @assignment = Assignments.find(params[:id])
   end 

   def new 
    @assignment = Assignments.new
    @Projects = Projects.all 
    @project_managers = ProjectManagers.all 
   end 

   def create 
    @assignment = Assignment.create(assignment_params)
    project = Project.find(assignment_params [:project_id])
    redirect_to project_path(project)
   end 
   
   def edit 
    @assignment = Assignments.find(params[:id])
    @projects = Project.all 
    @coaches = ProjectManager.all 
   end 

   def update 
    @assignment = Assignment.find(params[:id])
    @assignment.update(assignment_params)
    redirect_to assignment_path(@assignment)
   end


    def destroy 
        @assignment = Assignment.find(params[:id])
        redirect_to assignment
    end 
 
    private 

    def assignment_params
        params.require(:assignment).permit(:name, :description, :completion_stage, project_id, project_manager_id)
end
end

