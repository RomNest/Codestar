class CreateNovelties < ActiveRecord::Migration
  def change
    create_table :novelties do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
