ActiveAdmin.register Discount do

  form do |f|
    f.inputs do
      f.input :subject
      f.input :description
      f.input :start_at, :as => :datepicker
      f.input :finish_at, :as => :datepicker
      f.input :kind, :collection => Discount.kinds.keys, :allow_blank => false
      f.input :firm
      f.input :category
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :subject, :description, :start_at, :finish_at, :kind, :firm, category_ids: []
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

end
