class AddSourceToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :source_url, :string
  end
end
