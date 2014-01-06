class WelcomeController < ApplicationController
  def index
    @lessons = Lesson.all
  end
end