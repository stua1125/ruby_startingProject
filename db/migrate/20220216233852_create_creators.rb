class CreateCreators < ActiveRecord::Migration[7.0]

  def change
    create_table :creators do |t|
      t.string :channel
      t.string :contents
      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.string :age
      t.timestamps
    end

    create_table :creators_users, id: false do |t|
      t.belongs_to :creator
      t.belongs_to :user
    end
  end
end
