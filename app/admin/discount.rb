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

  controller do
    def permitted_params
      params.permit!
    end
  end

end
