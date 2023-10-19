class CreateSeconds < ActiveRecord::Migration[7.1]
  def change
    create_table :seconds do |t|
      t.string :product
      t.integer :qnty

      t.timestamps
    end
  end
end
