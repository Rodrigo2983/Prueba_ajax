class CompanysController < ApplicationController

    def index 
    @companys = Company.all
    @company = Company.new
    end

    def create 
      @company = Company.new(company_params)
      @company.save
      if @company.save?
        respondo_to :js 
      else
        redirect_to root_path, alert:' no puse pudo guardar la empresa'
  
      end
    end 
    

    private 
    def company_params 
      params.require(:company).permit(:name)
    end
end
