class Teacher::LessonsController < Teacher::TeacherController
  
  def new
    @section = Section.find(params[:section_id])
    @course = @section.course
    @lesson = @section.lessons.build
  end

  def create
    @section = Section.find(params[:section_id])
    @course = @section.course
    @lesson = @section.lessons.build(lesson_params)
    if @lesson.save
      redirect_to teacher_course_section_path(@course, @section)
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:section_id])
    @course = @section.course
    @lesson = @section.lessons.build
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to teacher_course_section_path(@course, @section)
    else
      render :new
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :duration, :body)
  end
end
