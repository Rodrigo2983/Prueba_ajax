class CompaniesController < ApplicationController


    def index 
      @companies = Company.all
      @company = Company.new
    end

    def create 
      @company = Company.new(company_params)
      @company.save 
      respond_to :js
    end 

end
