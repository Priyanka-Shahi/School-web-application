ActiveAdmin.register Appointment do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :teacher_id, :student_id, :appointment_date
  #
  # or
  #
  # permit_params do
  #   permitted = [:teacher_id, :student_id, :appointment_date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :student_id, :teacher_id, :appointment_date
end
