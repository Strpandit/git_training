class AddNameIdToThird < ActiveRecord::Migration[7.1]
  def change
    add_reference :thirds, :first, null: false, foreign_key: true
  end
end
