# frozen_string_literal: true

class GEstadoSerializer < ActiveModel::Serializer
  attributes :id, :nome_fantasia, :sigla, :g_pais
end
