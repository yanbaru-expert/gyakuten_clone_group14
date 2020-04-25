class LinesController < ApplicationController
    before_action :change_background_color
    def index
        @lines = Line.all
    end

    def show
        @line = Line.find(params[:id])
    end

    def change_background_color
        @background_color_class = "bg-success"
    end
end
