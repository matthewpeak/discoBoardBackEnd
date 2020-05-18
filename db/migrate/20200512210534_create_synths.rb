class CreateSynths < ActiveRecord::Migration[6.0]
  def change
    create_table :synths do |t|
      t.integer :sequence_id
      t.string :kind

      t.timestamps
    end
  end
end
