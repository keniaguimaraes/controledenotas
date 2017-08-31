class CreateNota < ActiveRecord::Migration[5.1]
  def change
    create_table :nota do |t|
      t.integer :funcionario_id
      t.integer :tiponota_id
      t.string :destinatario
      t.date :data
      t.integer :tipoassunto_id
      t.string :assunto
      t.text :descricao

      t.timestamps
    end
  end
end
