class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :image
      t.string :title
      t.integer :duration
      t.integer :cost
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
