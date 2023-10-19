class AddProductIdToThird < ActiveRecord::Migration[7.1]
  def change
    add_reference :thirds, :second, null: false, foreign_key: true
  end
end
