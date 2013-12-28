ActiveAdmin.register Room do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


  index do
    column :id
    column :room_code
    column :room_type
    column :zone
    column :neighborhood
    column :updated_at
    column :week_price
    column :location
    actions
  end
  
end
