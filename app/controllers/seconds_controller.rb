class SecondsController < ApplicationController
    skip_before_action :verify_authenticity_token
        
            def index
                @second = Second.all
                render json: @second
            end
        
            def show
                if @second = Second.find_by(id: params[:id])
                render json: @second, serializer: SecondSerializer
                else
                    render json: {error: "Records not found!"},  status: :unprocessable_entity
                end
            end
        
            def new
                @second = Second.new(second_params)
                render json: @second, serializer: SecondSerializer
            end
            
            # debugger
            def create
                @second = Second.new(second_params)
               if @second.save
                    render json: @second, serializer: SecondSerializer
               else
                render json: @second.errors
                end
            end
            private
                def second_params
                    params.require(:second).permit(:product, :qnty, :first_id)
                end    
end
