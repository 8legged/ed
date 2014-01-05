class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def flip
    @source = Lesson.find(params[:id])
    @lesson = @source.dup

    if @lesson.save
      flash[:notice] = "Lesson flipped!"
      redirect_to dashboard_path
    else
      flash[:notice] = "Unable to flip, want to make a new lesson?"
      render 'new'
    end
  end

#  def flip
#    @source = Lesson.find(params[:id])
#    @lesson = @source.dup
#    render 'new'

#    @new_flip.save
#    if @lesson.save
#      flash[:notice] = "Lesson flipped!"
#      redirect_to lessons_path
#    else
#      render 'new'
#    end
#  end

  def create
    @lesson = Lesson.new lesson_params

    if @lesson.save
      flash[:notice] = "Thanks for the lesson!"
      redirect_to lessons_path
    else
      render 'new'
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])

    if @lesson.update(lesson_params)
      redirect_to lessons_path
    else
      render 'edit'
    end
  end

#  def upload
#    uploaded_io = params[:lesson][:picture]
#    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
#      file.write(uploaded_io.read)
#    end
#  end

private

def lesson_params
  params.require(:lesson).permit(:title, :picture, :description, :category)
end
end
