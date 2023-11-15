class Restaurant < ApplicationRecord
  # Permettra d'écrire restaurant.reviews ET de détruire les reviews associées à un restaurant supprimé
  has_many :reviews, dependent: :destroy
  # Permettra de demander la saisie des champs name et address
  # On peut aussi mettre des valeurs par défaut directement dans la BDD avec
  # une default: value lors de la création du model -> db:migrate pour persister cette info dans la db
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: {
    in: ["chinese", "italian", "japanese", "french", "belgian"],
    message: '%<value> is not a valid category. Please choose between chinese, italian, japanese, french, belgian'
  }
end
