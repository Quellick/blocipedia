class CreateCollaborators < ActiveRecord::Migration[5.1]
  def change
    create_table :collaborators do |t|
      t.belongs_to :user
      t.belongs_to :id
      t.timestamps
    end
  end  
end
