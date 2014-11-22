class Teacher::SectionsController < Teacher::TeacherController
  before_action :set_section, only: [:show, :edit, :update]
  def index
  end

  def show
    @lessons = @section.lessons
  end

  def new
    @course = Course.find(params[:course_id])
    @section = @course.sections.build
  end

  def create
    @course = Course.find(params[:course_id])
    @section = @course.sections.build(section_params)
    if @section.save
      redirect_to teacher_course_section_path(@course, @section), success: "Section created successfully!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @course = @section.course
    if @section.update_attributes(section_params)
      redirect_to teacher_course_section_path(@course, @section), success: "Section successfully updated!"
    else
      render :edit
    end
  end

  private
    def section_params
      params.require(:section).permit(:title, :description, :position)
    end

    def set_section
      @section = Section.find(params[:id])
      @course = @section.course
    end
end
