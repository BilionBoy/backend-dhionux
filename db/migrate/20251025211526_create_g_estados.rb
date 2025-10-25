# frozen_string_literal: true

class CreateGEstados < ActiveRecord::Migration[7.0]
  def up
    unless table_exists?(:g_estados)
      create_table :g_estados do |t|
        t.string :nome_fantasia
        t.string :sigla
        t.references :g_pais, null: false, foreign_key: true

        t.timestamps
      end
    end
  end

  def down
    drop_table :g_estados if table_exists?(:g_estados)
  end
end
