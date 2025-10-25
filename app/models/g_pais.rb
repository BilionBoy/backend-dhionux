# frozen_string_literal: true

class GPais < ApplicationRecord
  validates :descricao,  presence: true
  validates :sigla,      presence: true
end
