class CreateProjects < ActiveRecord::Migration[6.1]

  # belongs_to :user, primary_key: :user_id
  
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :repo_url
      t.integer :user_id
      t.timestamps
    end
  end
end
