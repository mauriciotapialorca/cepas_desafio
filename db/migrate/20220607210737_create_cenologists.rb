class CreateCenologists < ActiveRecord::Migration[7.0]
  def change
    create_table :cenologists do |t|
      t.string :name

      t.timestamps
    end
  end
end
