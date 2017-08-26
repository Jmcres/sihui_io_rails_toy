class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.integer :subscriptable_id
      t.string :subscriptable_type

      t.timestamps
    end
  end
end
