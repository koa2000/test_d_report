class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :project_name
      t.string :issue

      t.timestamps
    end
  end
end
