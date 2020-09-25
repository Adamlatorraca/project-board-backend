class Api::V1::ProjectsController < ApplicationController

    def index
        projects = Project.all
        render json: projects
    end

private
    #add account_id?
    def project_params
        params.require(:project).permit(:title, :description, :contact)
    end
end
