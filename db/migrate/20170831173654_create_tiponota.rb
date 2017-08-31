class CreateTiponota < ActiveRecord::Migration[5.1]
  def change
    create_table :tiponota do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
