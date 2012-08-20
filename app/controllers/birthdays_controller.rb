
class BirthdaysController < ApplicationController
before_filter :authenticate_user!
  # GET /birthdays
  # GET /birthdays.json
  def index
    @birthdays = Birthday.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @birthdays }
    end
  end

  # GET /birthdays/1
  # GET /birthdays/1.json
  def show
    @birthday = Birthday.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @birthday }
    end
  end

  # GET /birthdays/new
  # GET /birthdays/new.json
  def new
    @birthday = Birthday.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @birthday }
    end
  end

  # GET /birthdays/1/edit
  def edit
    @birthday = Birthday.find(params[:id])
  end

  # POST /birthdays
  # POST /birthdays.json
  def create
    @birthday = Birthday.new(params[:birthday])

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
    @birthday = Birthday.find(params[:id])

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
    @birthday = Birthday.find(params[:id])
    @birthday.destroy

    respond_to do |format|
      format.html { redirect_to birthdays_url }
      format.json { head :no_content }
    end
  end
end
