class DnagradesController < ApplicationController
  # GET /dnagrades
  # GET /dnagrades.json
  def index
    @dnagrades = Dnagrade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @dnagrades }
    end
  end

  # GET /dnagrades/1
  # GET /dnagrades/1.json
  def show
    @dnagrade = Dnagrade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @dnagrade }
    end
  end

  # GET /dnagrades/new
  # GET /dnagrades/new.json
  def new
    @dnagrade = Dnagrade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @dnagrade }
    end
  end

  # GET /dnagrades/1/edit
  def edit
    @dnagrade = Dnagrade.find(params[:id])
  end

  # POST /dnagrades
  # POST /dnagrades.json
  def create
    @dnagrade = Dnagrade.new(params[:dnagrade])

    respond_to do |format|
      if @dnagrade.save
        format.html { redirect_to @dnagrade, :notice => 'Dnagrade was successfully created.' }
        format.json { render :json => @dnagrade, :status => :created, :location => @dnagrade }
      else
        format.html { render :action => "new" }
        format.json { render :json => @dnagrade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dnagrades/1
  # PUT /dnagrades/1.json
  def update
    @dnagrade = Dnagrade.find(params[:id])

    respond_to do |format|
      if @dnagrade.update_attributes(params[:dnagrade])
        format.html { redirect_to @dnagrade, :notice => 'Dnagrade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @dnagrade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dnagrades/1
  # DELETE /dnagrades/1.json
  def destroy
    @dnagrade = Dnagrade.find(params[:id])
    @dnagrade.destroy

    respond_to do |format|
      format.html { redirect_to dnagrades_url }
      format.json { head :no_content }
    end
  end
end
