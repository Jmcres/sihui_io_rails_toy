class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.integer :subscribable_id
      t.string :subscribable_type

      t.timestamps
    end
  end
end
