class FirstsController < ApplicationController
    
        skip_before_action :verify_authenticity_token
        
            def index
                @first = First.all
                render json: @first
            end
        
            def show
                if @first = First.find_by(id: params[:id])
                render json: @first, serializer: FirstSerializer
                else
                    render json: {error: "Records not found!"},  status: :unprocessable_entity
                end
            end
        
            def new
                @first = First.new(first_params)
                render json: @first, serializer: FirstSerializer
            end
        
            def create
                @first = First.new(first_params)
               if @first.save
                    render json: @first, serializer: FirstSerializer
               else
                render json: @first.errors
                end
            end
        
            private
            def first_params
                params.require(:first).permit(:name, :number)
            end        
end
