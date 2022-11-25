module BlogExamsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_blog_exams_path
    elsif action_name == 'edit'
      blog_exam_path
    end
  end
end
