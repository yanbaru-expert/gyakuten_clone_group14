class QuestionsController < ApplicationController
    def index
        @question = Question.new 
        @questions = Question.all
    end

    def create
        Question.create(question_params)
        redirect_to questions_path
    end

    private
    def question_params
        params.require(:question).permit(:title,:detail)
    end
end
