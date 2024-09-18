class CreateJobs < ActiveRecord::Migration[7.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :category
      t.string :salary

      t.timestamps
    end
  end
end
