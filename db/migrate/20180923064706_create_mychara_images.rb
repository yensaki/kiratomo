class CreateMycharaImages < ActiveRecord::Migration[5.2]
  def change
    create_table :mychara_images do |t|
      t.references :mychara, null: false, index: true
      t.references :image, null: false, index: true
      t.timestamps null: false
    end
  end
end
