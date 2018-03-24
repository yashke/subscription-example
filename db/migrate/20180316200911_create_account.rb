class CreateAccount < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts, id: :uuid do |t|
      t.integer :revenue, default: 0
    end
  end
end
