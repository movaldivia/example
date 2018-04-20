class CreatePublications < ActiveRecord::Migration[5.1]
  def change
    create_table :publications do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :publications, [:user_id, :created_at]
  end
end
