# frozen_string_literal: true

class GEstado < ApplicationRecord
  belongs_to :g_pais

  validates :nome_fantasia, presence: true
  validates :sigla,         presence: true
end
