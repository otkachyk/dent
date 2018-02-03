class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :f_name
      t.string :m_name
      t.string :l_name
      t.date :birthday
      t.string :tel
      t.string :gender

      t.timestamps
    end
  end
end
