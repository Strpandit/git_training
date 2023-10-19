class ThirdsController < ApplicationController
    skip_before_action :verify_authenticity_token
        
            def index
                @third = Third.all
                render json: @third
            end
        
            def show
                if @third = Third.find_by(id: params[:id])
                render json: @third, serializer: ThirdSerializer
                else
                    render json: {error: "Records not found!"},  status: :unprocessable_entity
                end
            end
        
            def new
                @third = Third.new(third_params)
                render json: @third, serializer: ThirdSerializer
            end
        
            def create
                @third = Third.new(third_params)
               if @third.save
                    render json: @third, serializer: ThirdSerializer
               else
                render json: {error: "Record not Created!"},  status: :unprocessable_entity
                end
            end
        
            private
            def third_params
                params.require(:third).permit(:add, :pin, :first_id, :second_id)
            end
end
