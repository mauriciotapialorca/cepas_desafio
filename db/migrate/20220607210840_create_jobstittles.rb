class CreateJobstittles < ActiveRecord::Migration[7.0]
  def change
    create_table :jobstittles do |t|
      t.string :job_tittle

      t.timestamps
    end
  end
end
