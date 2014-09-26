class CreateSampleforms < ActiveRecord::Migration
  def change
    create_table :sampleforms do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.string :address
      t.string :country
      t.string :email
      t.string :password
      t.string :confirm_password
      t.string :images
      t.references :s1, index: true

      t.timestamps
    end
  end

  
end
