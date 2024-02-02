class CreateStudios < ActiveRecord::Migration[7.1]
  def change
    create_table :studios do |t|
     #as mentioned in class: we dont need to include id because already generated
      t.string "name"
      t.timestamps
    end
  end
end


