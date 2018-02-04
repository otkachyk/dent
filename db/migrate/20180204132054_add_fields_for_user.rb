class AddFieldsForUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :birthday, :date
    add_column :users, :tel, :string
    add_column :users, :gender, :string
    add_column :users, :departament_id, :integer
  end
end
