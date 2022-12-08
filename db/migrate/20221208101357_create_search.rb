class CreateSearch < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string "title", null: false

      t.timestamps
    end
  end
end
