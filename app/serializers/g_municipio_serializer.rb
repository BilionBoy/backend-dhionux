# frozen_string_literal: true

class GMunicipioSerializer < ActiveModel::Serializer
  attributes :id, :nome_fantasia, :sigla, :g_estado
end
