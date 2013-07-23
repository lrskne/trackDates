class MydatesController < ApplicationController
  # GET /mydates
  # GET /mydates.json
  def index
    @mydates = Mydate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mydates }
    end
  end

  # GET /mydates/1
  # GET /mydates/1.json
  def show
    @mydate = Mydate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mydate }
    end
  end

  # GET /mydates/new
  # GET /mydates/new.json
  def new
    @mydate = Mydate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mydate }
    end
  end

  # GET /mydates/1/edit
  def edit
    @mydate = Mydate.find(params[:id])
  end

  # POST /mydates
  # POST /mydates.json
  def create
    @mydate = Mydate.new(params[:mydate])

    respond_to do |format|
      if @mydate.save
        format.html { redirect_to @mydate, notice: 'Mydate was successfully created.' }
        format.json { render json: @mydate, status: :created, location: @mydate }
      else
        format.html { render action: "new" }
        format.json { render json: @mydate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mydates/1
  # PUT /mydates/1.json
  def update
    @mydate = Mydate.find(params[:id])

    respond_to do |format|
      if @mydate.update_attributes(params[:mydate])
        format.html { redirect_to @mydate, notice: 'Mydate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mydate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mydates/1
  # DELETE /mydates/1.json
  def destroy
    @mydate = Mydate.find(params[:id])
    @mydate.destroy

    respond_to do |format|
      format.html { redirect_to mydates_url }
      format.json { head :no_content }
    end
  end
end
