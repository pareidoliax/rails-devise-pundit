module LabelsHelper

  def make_label(user)
    user.labels.map do |label|
      content_tag( :span, class: ['label', "label-#{label.colour}"] ) {label.name}
    end.join(' ').html_safe
  end

end
