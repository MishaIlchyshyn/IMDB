class AddUuidToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :uuid, :string
  end
end
