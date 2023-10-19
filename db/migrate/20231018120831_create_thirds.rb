class CreateThirds < ActiveRecord::Migration[7.1]
  def change
    create_table :thirds do |t|
      t.string :add
      t.integer :pin

      t.timestamps
    end
  end
end
