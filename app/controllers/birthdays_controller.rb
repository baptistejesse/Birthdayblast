
class BirthdaysController < ApplicationController
before_filter :authenticate_user!, :birthday_user
  # GET /birthdays
  # GET /birthdays.json
  def index
    @birthdays = @user.birthdays.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @birthdays }
    end
  end

  # GET /birthdays/1
  # GET /birthdays/1.json
  def show
    @birthday = @user.birthdays.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @birthday }
    end
  end

  # GET /birthdays/new
  # GET /birthdays/new.json
  def new
    @birthday = @user.birthdays.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @birthday }
    end
  end

  # GET /birthdays/1/edit
  def edit
    @birthday = @user.birthdays.find(params[:id])
  end

  # POST /birthdays
  # POST /birthdays.json
  def create
  
    @birthday = @user.birthdays.new(params[:birthday])

    respond_to do |format|
      if @birthday.save
        format.html { redirect_to @birthday, notice: 'Birthday was successfully created.' }
        format.json { render json: @birthday, status: :created, location: @birthday }
      else
        format.html { render action: "new" }
        format.json { render json: @birthday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /birthdays/1
  # PUT /birthdays/1.json
  def update
    @birthday = @user.birthdays.find(params[:id])

    respond_to do |format|
      if @birthday.update_attributes(params[:birthday])
        format.html { redirect_to @birthday, notice: 'Birthday was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @birthday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /birthdays/1
  # DELETE /birthdays/1.json
  def destroy
    @birthday = @user.birthdays.find(params[:id])
    @birthday.destroy

    respond_to do |format|
      format.html { redirect_to birthdays_url }
      format.json { head :no_content }
    end
  end


private


def birthday_user
@user ||= current_user  
  
end




end
