module ApplicationHelper
  def flash_message
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
  def error_message(err)
    # how to return multiple error messages?
    messages_in_view = []
    if err.errors.any?
      err.errors.each_with_index do |(name, msg), index|
        messages_in_view[index] = content_tag :div, msg, class: "alert alert-danger"
      end
      return messages_in_view[0]
    else
      return nil
    end
  end
end