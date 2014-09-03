class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name
      t.timestamps # === t.datetime :created_at, :updated_at
    end
  end
end
