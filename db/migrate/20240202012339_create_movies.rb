class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
#as mentioned in class: we dont need to include id because already generated
      t.string "title"
      t.integer "year_released"
      t.string "rated"
      t.integer "studio_id"
      t.timestamps
    end
  end
end
