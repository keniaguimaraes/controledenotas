class Nota < ApplicationRecord
    belongs_to:funcionario
    belongs_to:tiponotas
    belongs_to:tipoassunto
end
