class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.integer :instructor_id

      t.timestamps
    end
  end
end
