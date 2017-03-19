class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :name
      t.string :country
      t.string :city
      t.text :description
      t.text :requirements
      t.text :responsibilities
      t.text :tools_and_techonologies

      t.timestamps null: false
    end
  end
end
