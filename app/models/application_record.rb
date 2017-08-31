class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
      belongs_to:funcionario
    belongs_to:tiponotas
    belongs_to:tipoassunto
end
