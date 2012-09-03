class StudentsController < ApplicationController
  def index
  	@students = Student.all
	
	respond_to do |format|
		format.html # index.html.erb
		format.json {render :json => @students}
	end
  end
  
  def new
  	@student = Student.new
	
	respond_to do |format|
		format.html # new.html.erb
		format.json {render :json => @student}
	end
  end
  
  def create
  	@student = Student.new(params[:student])
	
	respond_to do |format|
		if @student.save
			format.html {redirect_to students_index_path, :notice => 'successfully created'}
			format.json {render :json => @student, :status => :created, :location => @student}
		else
			format.html {render :action => "new"}
			format.json {render :json => @student.errors, :status => :unprocessable_entity}
		end
	end
  end
  
  def show
  	@student = Student.find(params[:id])
	
	respond_to do |format|
		format.html # show.html.erb
		format.json {render :json => @student}
	end
  end
  
  def edit
  	@student = Student.find(params[:id])
  end
  
  def update
  	@student = Student.find(params[:id])
	
	respond_to do |format|
		if @student.update_attributes(params[:student])
			format.html {redirect_to students_index_path, :notice => "Updated successfully"}
			format.json {head :no_content}
		else
			format.html {render :action => "edit"}
			format.json {render :json => @student.errors, :status => :unprocessable_entity}
		end
	end
  end
  
  def destroy
  	@student = Student.find(params[:id])
	@student.destroy
	
	respond_to do |format|
		format.html {redirect_to students_index_path, :notice => "Deleted Successfully"}
		format.json {head :no_content}
	end  
  end
  
  def stu_active
  	@student = Student.active(params[:id])
	
	respond_to do |format|
		format.html {redirect_to students_index_path, :notice => "Successfully Activated"}
		format.json {head :no_content}		
	end
  end
  
  def stu_inactive
  	@student = Student.deactivate(params[:id])
	
	respond_to do |format|
		format.html {redirect_to students_index_path, :notice => "Successfully De-activate"}
		format.json {head :no_content}
	end
  end
  
end
