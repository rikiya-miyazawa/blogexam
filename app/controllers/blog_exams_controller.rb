class BlogExamsController < ApplicationController
  before_action :set_blog_exam, only: [:show, :edit, :update, :destroy]

  def index
    @blog_exams = BlogExam.all
    #allで複数の値を入れるから複数形の命名
  end

  def new
    @blog_exam = BlogExam.new
  end

  def create
    @blog_exam = BlogExam.new(blog_exam_params)
    if params[:back]
      render :new
    else
      if @blog_exam.save
        redirect_to blog_exams_path, notice: "ブログを作成しました！"
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
  end
  
  def update
    if @blog_exam.update(blog_exam_params)
      redirect_to blog_exams_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @blog_exam.destroy
    redirect_to blog_exams_path, notice: "ブログを削除しました！"
  end

  def confirm
    @blog_exam = BlogExam.new(blog_exam_params)
    render :new if @blog_exam.invalid?
  end

  private

  def blog_exam_params
    params.require(:blog_exam).permit(:title, :content)
  end

  def set_blog_exam
    @blog_exam = BlogExam.find(params[:id])
  end


end
