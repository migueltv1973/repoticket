class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :email
      t.text :descripcion
      t.string :photo
      t.integer :status , default: 0
      t.integer :id_estado
      t.integer :id_cliente
      t.integer :id_usuario

      t.timestamps
    end
  end
end
