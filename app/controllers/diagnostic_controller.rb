class DiagnosticController < ApplicationController

  # GET /diagnostic/1
  def show

    question_id =  Integer params[:id]

    @evaluation = Evaluation.first

    @total_questions = @evaluation.questions.count

    #if @evaluation.questions.where('questions.order = ?' , question_id ).exists?
    if question_id <= @total_questions

    @question = @evaluation.questions.where('questions.order = ?' , question_id ).first
    @option = @question.options.all
    @progress = question_id

    else
        redirect_to :controller => "result"
    end


  end

end


