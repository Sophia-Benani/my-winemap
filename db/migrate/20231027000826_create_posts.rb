class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.date :date
      t.string :location
      t.string :address
      t.string :category
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
