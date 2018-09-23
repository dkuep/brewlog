class CreateSchuettungs < ActiveRecord::Migration[5.1]
  def change
    create_table :schuettungs do |t|
      t.references :brew, foreign_key: true
      t.references :malt, foreign_key: true
      t.float :amount
      t.text :note

      t.timestamps
    end
  end
end
