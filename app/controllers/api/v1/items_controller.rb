class Api::V1::ItemsController < ApplicationController
    def index
        items = Item.page(1)
        render json: {resources: items}
    end

    def create
        item = Item.new amount: 1
        if item.save
          render json: {resource: item}
        else
          render json: {resource: item.errors}
        end
    end
end
