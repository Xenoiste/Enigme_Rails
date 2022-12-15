class HomeController < ApplicationController
  def index
    @avoirBon
    if params.has_key? :reponse and not params[:reponse].blank?
      @reponse = params[:reponse]
      if params[:reponse] == "visibility: visible;"
        @avoirBon = true
      else
        @avoirBon = false
      end
    end
  end
end
