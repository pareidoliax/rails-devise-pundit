module ApplicationHelper

  def flash_class(name)
    if name == 'notice'
      return 'success'
    elsif name == 'alert'
      return 'danger'
    elsif ['success', 'info', 'warning', 'danger'].include?(name)
      return name
    else
      return 'info'
    end
  end

end
