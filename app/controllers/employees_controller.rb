class EmployeesController < Devise::SessionsController

	belongs_to :company
  private

    def employee_params
      params.require(:employee).permit(:first_name, :last_name)
    end
end

