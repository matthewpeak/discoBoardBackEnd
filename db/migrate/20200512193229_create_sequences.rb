class CreateSequences < ActiveRecord::Migration[6.0]
  def change
    create_table :sequences do |t|
      t.integer :song_id
      t.integer :order
      t.string  :tone
      t.boolean :note1
      t.boolean :note2
      t.boolean :note3
      t.boolean :note4
      t.boolean :note5
      t.boolean :note6
      t.boolean :note7
      t.boolean :note8
      t.string  :synth
     

      t.timestamps
    end
  end
end
