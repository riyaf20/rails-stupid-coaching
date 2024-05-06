class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answers = ["Great", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if params[:question] == "I am going to work"
      @answers = answers[0]
    elsif params[:question].to_s.end_with?("?")
      @answers = answers[1]
    else
      @answers = answers[2]
    end
    @questions = params[:question]
  end
end
