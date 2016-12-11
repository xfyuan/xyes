class Api::V1::SearchesController < ApplicationController

  def index
    render json: StoreIndex.query(query_string: {fields: [:name, :description, :body], query: params[:q], default_operator: 'or'}).load.to_a, each_serializer: SearchesSerializer
  end
end
