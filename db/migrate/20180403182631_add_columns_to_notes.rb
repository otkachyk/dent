class AddColumnsToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :name, :string
    add_column :notes, :description, :text
    add_column :notes, :card_id, :integer

  end
end
