class QuestionsController < ApplicationController
    def index
        @question = Question.new 
        @questions = Question.all
    end

    def create
        @question = Question.new(question_params)
        if @question.save
            redirect_to questions_path, notice: "質問を投稿しました"
        else
            flash.now[:alert] = "質問を投稿できませんでした"
            @questions = Question.all
            render :index
        end
    end

    private
    def question_params
        params.require(:question).permit(:title,:detail)
    end
end
