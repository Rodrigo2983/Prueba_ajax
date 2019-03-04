class CompanysController < ApplicationController
    before_action :authenticate_user, only: %i[show]

    def index 
    @companys = Company.all
    @company = Company.new
    end

    def create 
      @company = Company.new(company_params)
      if @company.save?
        respondo_to :js 
      else
        redirect_to root_path, alert:' no puse pudo guardar la empresa'
  
      end
    end 
    
    def show 
      @company = Company.find(params[:id])
      respond_to :js
    end

    def edit 
    @company = Company.find(params[:id])
    respond_to :js
    end
    def update 
      @company.update(company_params)
      if @company.save?
        respond_to :js
      else 
        redirect_to root_path
      end
     
    end


    private 
    def company_params 
      params.require(:company).permit(:name)
    end
end
