class CreateBios < ActiveRecord::Migration[5.1]
  def change
    create_table :bios do |t|
      t.string :profile_image
      t.text :description
      t.string :user_id
      t.string :integer
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
