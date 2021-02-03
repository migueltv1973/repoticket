class CreateTicketThreads < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_threads do |t|
      t.string :title
      t.text :descripcion
      t.string :photo
      t.integer :cliente_id
      t.integer :usuario_id
      t.integer :ticket_id
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
