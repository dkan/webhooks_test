class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :public_id
      t.string :description
      t.string :status
      t.text :previous_attributes

      t.timestamps
    end
  end
end
