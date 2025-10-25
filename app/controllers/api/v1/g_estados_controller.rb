# frozen_string_literal: true

module Api
  module V1
    class GEstadosController < ApplicationController
      before_action :set_g_estado, only: [:show, :update, :destroy]

      def index
        @g_estados = GEstado.all
        render json: @g_estados
      end

      def show
        render json: @g_estado
      end

      def create
        @g_estado = GEstado.new(g_estado_params)
        if @g_estado.save
          render json: @g_estado, status: :created
        else
          render json: @g_estado.errors, status: :unprocessable_entity
        end
      end

      def update
        if @g_estado.update(g_estado_params)
          render json: @g_estado
        else
          render json: @g_estado.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @g_estado.destroy
        head :no_content
      end

      private

      def set_g_estado
        @g_estado = GEstado.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Not found" }, status: :not_found
      end

      def g_estado_params
        params.require(:g_estado).permit(:nome_fantasia, :sigla, :g_pais)
      end
    end
  end
end
