class AddAdminAttrib < ActiveRecord::Migration
  def change
    add_column :admins, :firstname, :string, :null=> false, :default=> ""
    add_column :admins, :lastname, :string, :null=> false, :default=> ""
  end
end
