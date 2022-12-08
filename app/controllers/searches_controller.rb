class SearchesController < ApplicationController
  def index
    @searched = Search.all
  end

  def create; end
end
