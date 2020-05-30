class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :username
      t.string :work
      t.string :rate
      t.string :contact
      t.timestamps
    end
  end
end
