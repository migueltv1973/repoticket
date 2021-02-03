class CreateTicketThreads < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_threads do |t|
      t.string :title
      t.string :email
      t.text :descripcion
      t.string :photo
      t.integer :id_estado
      t.integer :id_cliente
      t.integer :id_usuario
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
