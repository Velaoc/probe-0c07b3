class CreateGuestbookEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :guestbook_entries do |t|
      t.string :name, limit: 60
      t.text :message, null: false
      t.timestamps
    end
  end
end
