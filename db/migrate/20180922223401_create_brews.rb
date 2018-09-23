class CreateBrews < ActiveRecord::Migration[5.1]
  def change
    create_table :brews do |t|
      t.string :name
      t.string :brewstyle
      t.numeric :version
      t.datetime :brewdate
      t.text :notes

      t.timestamps
    end
  end
end
