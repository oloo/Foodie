ActiveAdmin.register User do
  index do
  	column :name
  	column :email
  	column :last_sign_in_at
  	column :sign_in_count
  	default_actions
  end
end
