class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :username
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
