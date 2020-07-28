class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :front_word
      t.string :back_definition
      t.text :back_notes
      t.boolean :understanding
      t.integer :understanding_num
      t.integer :deck_id

      t.timestamps
    end
  end
end
