class Restaurant < ApplicationRecord
  # Un restaurant doit avoir un nom, une adresse et une catégorie.
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  # La catégorie du restaurant doit appartenir à cette liste fixe :
  # ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: {
    within: %w[chinese italian japanese french belgian],
    message: '%{value} is not a valid category'
  }

  # Quand un restaurant est supprimé, tous ses avis doivent aussi être supprimés.
  has_many :reviews, dependent: :destroy
end
