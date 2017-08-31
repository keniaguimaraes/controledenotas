class Nota < ApplicationRecord
    belongs_to:funcionario
    belongs_to:tiponota
    belongs_to:tipoassunto
end
