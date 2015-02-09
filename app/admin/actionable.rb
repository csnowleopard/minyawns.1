ActiveAdmin.register Actionable do
  permit_params :student_requested_job, :employeer_requested_student_for_job, :student_approved_for_job, :appeared_at_job, :student_did_job_well


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


end
