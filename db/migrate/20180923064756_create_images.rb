class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :user, null: false, index: true
      t.timestamps
    end
  end
end
