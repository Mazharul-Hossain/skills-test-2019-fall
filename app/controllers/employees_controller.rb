class EmployeesController < ApplicationController

  def index
    employees = Employee.all
    respond_to do |format|
      format.html { render :index, locals: { employees: employees } }
    end 
  end

  def new
    employee = Employee.new
    respond_to do |format|
      format.html { render :new, locals: { employee: employee } }
    end 
  end

  def create
    # new object from params
    employee = Employee.new(params.require(:employee).permit(:first_name, :last_name, :dob, :job_title))
    
    respond_to do |format|
      format.html {
        if employee.save
          # success message
          flash[:success] = "Employee information saved successfully"
          # redirect to index
          redirect_to employees_url
        else
          # error message
          flash.now[:error] = "Error: Employee information could not be saved"
          # render new
          render :new, locals: { employee: employee } 
        end
      }
    end
  end

end
