class SectionsController < ApplicationController
  def show
    @section = Section.find(params[:id])
    @lessons = @section.lessons
  end
end
