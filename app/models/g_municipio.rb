# frozen_string_literal: true

class GMunicipio < ApplicationRecord
  belongs_to :g_estado

  validates :nome_fantasia, presence: true
  validates :sigla,         presence: true
end
