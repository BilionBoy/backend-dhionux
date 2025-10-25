# frozen_string_literal: true

module Api
  module V1
    class GPaisController < ApplicationController
      before_action :set_g_pais, only: [ :show, :update, :destroy ]

      def index
        @g_paises = GPais.all
        render json: @g_paises
      end

      def show
        render json: @g_pais
      end

      def create
        @g_pais = GPais.new(g_pais_params)
        if @g_pais.save
          render json: @g_pais, status: :created
        else
          render json: @g_pais.errors, status: :unprocessable_entity
        end
      end

      def update
        if @g_pais.update(g_pais_params)
          render json: @g_pais
        else
          render json: @g_pais.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @g_pais.destroy
        head :no_content
      end

      private

      def set_g_pais
        @g_pais = GPais.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Not found" }, status: :not_found
      end

      def g_pais_params
        params.require(:g_pais).permit(descricao, sigla)
      end
    end
  end
end
