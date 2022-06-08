class CreateMagazines < ActiveRecord::Migration[7.0]
  def change
    create_table :magazines do |t|
      t.string :tittle
      t.string :job_tittle

      t.timestamps
    end
  end
end
