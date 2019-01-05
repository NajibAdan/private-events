class ChangingColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :attendances, :user, :user_id
    rename_column :attendances, :event, :event_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
