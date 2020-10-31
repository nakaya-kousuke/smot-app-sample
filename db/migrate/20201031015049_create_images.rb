class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.references :store, null: false, foreign_key: true
      t.string :image_url, null: false
      t.timestamps
    end
  end
end
