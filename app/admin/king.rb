ActiveAdmin.register King do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name, :period, :summary, :detail ,:photo, :dynasty_id
  form :html => {:multipart => true} do |f|
    f.inputs do
      f.input :name
      f.input :period
      f.input :summary
      f.input :detail
      f.input :photo, :as => :file
      f.input :dynasty_id, :as => :select, :collection => Dynasty.all
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
