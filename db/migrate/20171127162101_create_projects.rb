class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.float :funding_goal
      t.date :start_date
      t.date :end_date
      t.boolean :active
      t.string :image_url
      t.string :about
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
