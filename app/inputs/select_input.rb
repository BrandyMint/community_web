class SelectInput < Formtastic::Inputs::SelectInput
  def select_html
    builder.select(input_name, collection, input_options, input_html_options.merge(role: 'select2', style: 'min-width:20%'))
  end

  def grouped_select_html
    builder.grouped_collection_select(
      input_name,
      grouped_collection,
      group_association,
      group_label_method,
      value_method,
      label_method,
      input_options,
      input_html_options.merge(role: 'select2', style: 'min-width:20%')
    )
  end
end