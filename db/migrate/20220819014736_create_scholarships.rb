class CreateScholarships < ActiveRecord::Migration[6.1]
  def change
    create_table :scholarships do |t|
      t.string :name
      t.text :description
      t.string :url
      t.date :due_date
      t.integer :value

      t.timestamps
    end
  end
end
