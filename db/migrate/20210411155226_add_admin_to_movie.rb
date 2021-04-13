class AddAdminToMovie < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :admin, null: false, foreign_key: true
  end
end
