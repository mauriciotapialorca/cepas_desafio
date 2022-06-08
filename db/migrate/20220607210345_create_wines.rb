class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.integer :score

      t.timestamps
    end
  end
end
