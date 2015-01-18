class CreateBears < ActiveRecord::Migration
  def change
    create_table :bears do |t|
      t.string :name
      t.text :bio
      t.integer :age

      t.timestamps null: false
    end
  end
end
