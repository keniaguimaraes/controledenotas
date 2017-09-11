class Nota < ApplicationRecord
    belongs_to:funcionario
    belongs_to:tiponota
    belongs_to:tipoassunto
   
mount_uploader :anexo, AnexoUploader
  
end
