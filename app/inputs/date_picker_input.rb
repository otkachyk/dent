# -*- encoding : utf-8 -*-
class DatePickerInput < SimpleForm::Inputs::StringInput
  enable :placeholder, :format, :size, :default

  def input
    @builder.date_picker_field(attribute_name, input_html_options)
  end
end
