class CreateInstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :instructions do |t|
      t.text :user
      t.text :assistant

      t.timestamps
    end
  end
end
