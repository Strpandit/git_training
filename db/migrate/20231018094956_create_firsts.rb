class CreateFirsts < ActiveRecord::Migration[7.1]
  def change
    create_table :firsts do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
