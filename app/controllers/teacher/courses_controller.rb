class Teacher::CoursesController < Teacher::TeacherController
  before_action :set_course, only: [:show, :edit]

  def index
    @courses = Course.all
  end

  def show
    @sections = @course.sections
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to teacher_course_path(@course), success: "Course created successfully - Let's add some content to your class!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.save
      redirect_to teacher_course_path(@course), success: "Course successfully updated!"
    else
      render :edit
    end
  end

  private
    def course_params
      params.require(:course).permit(:name, :summary, :location)
    end

    def set_course
      @course = Course.find(params[:id])
    end
end
