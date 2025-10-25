# frozen_string_literal: true

class CreateGMunicipios < ActiveRecord::Migration[6.0]
  def up
    unless table_exists?(:g_municipios)
     create_table :g_municipios do |t|
        t.string :nome_fantasia
        t.string :sigla
        t.string :g_estado,  null: false, foreign_key: true
      t.timestamps
     end
    end
  end

  def down
    drop_table :g_municipios if table_exists?(:g_municipios)
  end
end
