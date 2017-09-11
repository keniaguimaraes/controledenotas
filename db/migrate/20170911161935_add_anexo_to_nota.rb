class AddAnexoToNota < ActiveRecord::Migration[5.1]
  def change
    add_column :nota, :anexo, :string
  end
end
