module ApplicationHelper
  def notice_message
    if flash[:success]
      return content_tag :div, flash[:success], class: "alert alert-success"
    elsif flash[:info]
      return content_tag :div, flash[:info], class: "alert alert-info"
    elsif flash[:warning]
      return content_tag :div, flash[:warning], class: "alert alert-warning"
    elsif flash[:danger]
      return content_tag :div, flash[:danger], class: "alert alert-danger"
    end
  end
end