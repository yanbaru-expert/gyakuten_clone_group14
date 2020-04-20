class SolutionsController < ApplicationController
    def create 
        @question = Question.find(params[:question_id])
        @solution = Solution.new(detail: solution_params[:detail],
                                 question_id: params[:question_id])
        if @solution.save
            flash[:notice] = "回答を投稿しました"
            redirect_to controller: "questions", action: "show", id: @question.id 
        else
            flash.now[:alert] = "回答を投稿できませんでした"
            render template: "questions/show"
        end
    end

    private
    def solution_params
        params.require(:solution).permit(:detail)
    end
end
