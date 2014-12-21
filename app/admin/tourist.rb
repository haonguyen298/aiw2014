ActiveAdmin.register Tourist do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name,  :description, :summary, :photo1, :photo2, :photo3, :king_id, :dynasty_id
  form :html => {:multipart => true} do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :summary
      f.input :photo1, :as => :file
      f.input :photo2, :as => :file
      f.input :photo3, :as => :file
      f.input :king_id, :as => :select, :collection => King.all
      f.input :dynasty_id, :as => :select, :collection => Dynasty.all
    end
    f.actions
  end
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
