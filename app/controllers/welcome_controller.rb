class WelcomeController < ApplicationController
  def index
    @lessons = Lesson.all
    @list = Lesson.pluck(:title).last(5)
  end
end