class AddEmailAndEatingToBears < ActiveRecord::Migration
  def change
    add_column :bears, :email, :string
    add_column :bears, :eating, :boolean
  end
end
