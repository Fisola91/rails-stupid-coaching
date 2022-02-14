class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # The "params" help access the form & Url query data. It behaves like a hash
    @question = params[:question]

    # The conditional statement rep value of "@question ==> params[:question]"
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work"
    end
  end
end
