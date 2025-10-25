# frozen_string_literal: true

module Api
  module V1
    class GMunicipiosController < ApplicationController
      before_action :set_g_municipio, only: [:show, :update, :destroy]

      def index
        @g_municipios = GMunicipio.all
        render json: @g_municipios
      end

      def show
        render json: @g_municipio
      end

      def create
        @g_municipio = GMunicipio.new(g_municipio_params)
        if @g_municipio.save
          render json: @g_municipio, status: :created
        else
          render json: @g_municipio.errors, status: :unprocessable_entity
        end
      end

      def update
        if @g_municipio.update(g_municipio_params)
          render json: @g_municipio
        else
          render json: @g_municipio.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @g_municipio.destroy
        head :no_content
      end

      private

      def set_g_municipio
        @g_municipio = GMunicipio.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Not found" }, status: :not_found
      end

      def g_municipio_params
        params.require(:g_municipio).permit(:nome_fantasia, :sigla, :g_estado)
      end
    end
  end
end
