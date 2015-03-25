class CompaniesController < Devise::SessionsController

  has_many :employees
  
  private

    def company_params
      params.require(:company).permit(:name, :description)
    end
end

