module LabelsHelper

  def user_labels(user)
    user.labels.map do |label|
      make_label(label)
    end.join(' ').html_safe
  end

  def make_label(label)
    content_tag( :span, class: ['label', "label-#{label.colour}"] ) {label.name}
  end


end
