# frozen_string_literal: true

class CreateGPaises < ActiveRecord::Migration[7.0]
  def up
    unless table_exists?(:g_paises)
      create_table :g_paises do |t|
        t.string :descricao
        t.string :sigla
        t.timestamps
      end
    end
  end

  def down
    drop_table :g_paises if table_exists?(:g_paises)
  end
end
