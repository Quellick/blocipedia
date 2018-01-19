class CreateCollaborators < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_id
      t.timestamps
    end
    
    create_table  :wikis do |t|
      t.string :id
      t.timestamps
    end
  
    create_table :collaborators, id: false do |t|
      t.integer :user_id
      t.integer :id
      t.timestamps
    end
  end  
end
