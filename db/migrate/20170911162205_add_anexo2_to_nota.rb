class AddAnexo2ToNota < ActiveRecord::Migration[5.1]
  def change
    add_column :nota, :anexo2, :json
  end
end
