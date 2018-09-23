class CreateMalts < ActiveRecord::Migration[5.1]
  def change
    create_table :malts do |t|
      t.string :name
      t.float :ebcmin
      t.float :ebcmax

      t.timestamps
    end
  end
end
