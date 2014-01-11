class RetailUnitsController < ApplicationController
  # GET /retail_units
  # GET /retail_units.json
  def index
    @retail_units = RetailUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @retail_units }
    end
  end

  # GET /retail_units/1
  # GET /retail_units/1.json
  def show
    @retail_unit = RetailUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @retail_unit }
    end
  end

  # GET /retail_units/new
  # GET /retail_units/new.json
  def new
    @retail_unit = RetailUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @retail_unit }
    end
  end

  # GET /retail_units/1/edit
  def edit
    @retail_unit = RetailUnit.find(params[:id])
  end

  # POST /retail_units
  # POST /retail_units.json
  def create
    @retail_unit = RetailUnit.new(params[:retail_unit])

    respond_to do |format|
      if @retail_unit.save
        format.html { redirect_to @retail_unit, notice: 'Retail unit was successfully created.' }
        format.json { render json: @retail_unit, status: :created, location: @retail_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @retail_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /retail_units/1
  # PUT /retail_units/1.json
  def update
    @retail_unit = RetailUnit.find(params[:id])

    respond_to do |format|
      if @retail_unit.update_attributes(params[:retail_unit])
        format.html { redirect_to @retail_unit, notice: 'Retail unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @retail_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retail_units/1
  # DELETE /retail_units/1.json
  def destroy
    @retail_unit = RetailUnit.find(params[:id])
    @retail_unit.destroy

    respond_to do |format|
      format.html { redirect_to retail_units_url }
      format.json { head :no_content }
    end
  end
end
