ActiveAdmin.register Dynasty do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name,  :period, :background_summary, :detail, :photo
   form :html => {:multipart => true} do |f|
     f.inputs do
       f.input :name
       f.input :period
       f.input :background_summary
       f.input :detail
       f.input :photo, :as => :file
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
