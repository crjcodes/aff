class KeywordsController < ApplicationController
    def index
        @keywords = Keyword.all
    end

    def show
        @keyword = Keyword.find(params[:id])
    end


    def new
    end

    def create
    end

    def update
    end

    def delete
    end


end
