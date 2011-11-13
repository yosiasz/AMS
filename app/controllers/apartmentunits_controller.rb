class ApartmentunitsController < ApplicationController
  # GET /apartmentunits
  # GET /apartmentunits.json
  def index
    @apartmentunits = Apartmentunit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @apartmentunits }
    end
  end

  # GET /apartmentunits/1
  # GET /apartmentunits/1.json
  def show
    @apartmentunit = Apartmentunit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apartmentunit }
    end
  end

  # GET /apartmentunits/new
  # GET /apartmentunits/new.json
  def new
    @apartmentunit = Apartmentunit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apartmentunit }
    end
  end

  # GET /apartmentunits/1/edit
  def edit
    @apartmentunit = Apartmentunit.find(params[:id])
  end

  # POST /apartmentunits
  # POST /apartmentunits.json
  def create
    @apartmentunit = Apartmentunit.new(params[:apartmentunit])

    respond_to do |format|
      if @apartmentunit.save
        format.html { redirect_to @apartmentunit, notice: 'Apartmentunit was successfully created.' }
        format.json { render json: @apartmentunit, status: :created, location: @apartmentunit }
      else
        format.html { render action: "new" }
        format.json { render json: @apartmentunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /apartmentunits/1
  # PUT /apartmentunits/1.json
  def update
    @apartmentunit = Apartmentunit.find(params[:id])

    respond_to do |format|
      if @apartmentunit.update_attributes(params[:apartmentunit])
        format.html { redirect_to @apartmentunit, notice: 'Apartmentunit was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @apartmentunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartmentunits/1
  # DELETE /apartmentunits/1.json
  def destroy
    @apartmentunit = Apartmentunit.find(params[:id])
    @apartmentunit.destroy

    respond_to do |format|
      format.html { redirect_to apartmentunits_url }
      format.json { head :ok }
    end
  end
end
