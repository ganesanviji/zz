class CreateS1s < ActiveRecord::Migration
  def change
    create_table :s1s do |t|
    	
      t.timestamps
    end
  end
end
