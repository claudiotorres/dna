class DnatestsController < ApplicationController
  # GET /dnatests
  # GET /dnatests.json
  def index
    @dnatests = Dnatest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @dnatests }
    end
  end

  # GET /dnatests/1
  # GET /dnatests/1.json
  def show
    @dnatest = Dnatest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @dnatest }
    end
  end

  # GET /dnatests/new
  # GET /dnatests/new.json
  def new
    @dnatest = Dnatest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @dnatest }
    end
  end

  # GET /dnatests/1/edit
  def edit
    @dnatest = Dnatest.find(params[:id])
  end

  # POST /dnatests
  # POST /dnatests.json
  def create
    @dnatest = Dnatest.new(params[:dnatest])

    respond_to do |format|
      if @dnatest.save
        format.html { redirect_to @dnatest, :notice => 'Dnatest was successfully created.' }
        format.json { render :json => @dnatest, :status => :created, :location => @dnatest }
      else
        format.html { render :action => "new" }
        format.json { render :json => @dnatest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dnatests/1
  # PUT /dnatests/1.json
  def update
    @dnatest = Dnatest.find(params[:id])

    respond_to do |format|
      if @dnatest.update_attributes(params[:dnatest])
        format.html { redirect_to @dnatest, :notice => 'Dnatest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @dnatest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dnatests/1
  # DELETE /dnatests/1.json
  def destroy
    @dnatest = Dnatest.find(params[:id])
    @dnatest.destroy

    respond_to do |format|
      format.html { redirect_to dnatests_url }
      format.json { head :no_content }
    end
  end
end
