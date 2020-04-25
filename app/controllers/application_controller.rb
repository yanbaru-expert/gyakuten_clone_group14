class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :background_color

    def background_color
        @background_color_class = "bg-primary"
    end
end
