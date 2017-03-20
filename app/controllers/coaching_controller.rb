class CoachingController < ApplicationController
  def answer
  @answer = coach_answer(params[:query])
  end

  def coach_answer(your_message)

    motivation = your_message.upcase == your_message ? "I can feel your motivation! " : ""

    if your_message[-1] == "?"
      "#{motivation}Silly question, get dressed and go to work!"
    else
      "#{motivation}I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message.downcase != "i am going to work right now!"
      return "I can feel your motivation! " + coach_answer(your_message)
    else
      return ""
    end
  end
end
