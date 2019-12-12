class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :position
      t.string :location
      t.string :link
      t.string :contacts
      t.text :notes
      t.text :next_steps
      t.boolean :applied
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
