class DiagnosticController < ApplicationController

  # GET /diagnostic
  def index

    @progress = 1
    render "show"

  end

  # GET /diagnostic/1
  def show

    @progress = Integer params[:id]

    if @progress > 10
     redirect_to :controller => "result"
    end

  end

end
