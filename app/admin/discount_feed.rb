ActiveAdmin.register DiscountFeed do

   form do |f|
    f.inputs do
      f.input :published
      f.input :discount
      f.input :cities
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

end
