class DiagnosticController < ApplicationController

  # GET /diagnostic/1
  # After specify the site at Home
  # or after each question answer selection
  def show

    # get the order index for Question
    question_index =  Integer params[:id]
    # check the evaluation been used
    # TODO: Select based on language option
    @evaluation = Evaluation.first
    # how many questions there are?
    @total_questions = @evaluation.questions.count

    # and check if this is the end of evaluation
    if question_index <= @total_questions
      # If is not the end of evaluation
      # get the corresponding question
      @question = @evaluation.questions.where('questions.order = ?' , question_index ).first
      # get all options
      @option = @question.options.all
      # set the progress bar
      @progress = question_index
      # get the current site
      @site = Site.find(params[:site])
      #create a new test if this is the first call
      if question_index == 1
        # create the new test
        @dnatest = @site.create_dnatest(:date => DateTime.now)
      end

      # create a repository for the answer
      @answer = @site.dnatest.answers.new
      # get the current question
      @question_id = @question.id

    else
      # If is the end of evaluation go to the result
      redirect_to :controller => "result"
    end

  end

# POST /diagnostic/
# After select an option and submit
  def create

    # get the order index for Question
    question_index =  Integer params[:id]

    # get the current site
    @site = Site.find(params[:site])

    # save the previous answer
    @answer = @site.dnatest.answers.create(params[:answer])

    # set for the next question
    question_index += 1

    # go to the next question
    redirect_to :action => :show, :id => question_index, :site => @site.id

  end

end


