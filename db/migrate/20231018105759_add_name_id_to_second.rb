class AddNameIdToSecond < ActiveRecord::Migration[7.1]
  def change
    add_reference :seconds, :first, null: false, foreign_key: true
  end
end
