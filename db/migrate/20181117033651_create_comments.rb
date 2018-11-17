class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    	t.string :content
    	t.integer :instructor_id
    	t.integer :student_id
    	t.integer :article_id
      t.timestamps
    end
  end
end
