class WeightsController < ApplicationController
  # GET /weights
  # GET /weights.json
  def index
    @weights = Weight.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @weights }
    end
  end

  # GET /weights/1
  # GET /weights/1.json
  def show
    @weight = Weight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @weight }
    end
  end

  # GET /weights/new
  # GET /weights/new.json
  def new
    @weight = Weight.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @weight }
    end
  end

  # GET /weights/1/edit
  def edit
    @weight = Weight.find(params[:id])
  end

  # POST /weights
  # POST /weights.json
  def create
    @option = Option.find(params[:option_id])
    @weight = @option.weights.create(params[:weight])
    redirect_to question_option_path(@option.question, @option)
  end

  # PUT /weights/1
  # PUT /weights/1.json
  def update
    @weight = Weight.find(params[:id])

    respond_to do |format|
      if @weight.update_attributes(params[:weight])
        format.html { redirect_to @weight, :notice => 'Weight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /weights/1
  # DELETE /weights/1.json
  def destroy
    @option = Option.find(params[:option_id])
    @weight = @option.weights.find(params[:id])
    @weight.destroy
    redirect_to question_option_path(@option.question, @option)
  end
end
