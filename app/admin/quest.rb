ActiveAdmin.register Quest do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  permit_params :title, :teaser, :description, :url, category_ids: []
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :teaser
      f.input :description
      f.input :url
      f.input :categories
    end
    f.actions
  end

end
