class InstructionsController < ApplicationController

    def new
        @instruction = Instruction.new(user: params[:user], assistant: params[:assistant])

        if @instruction.save
            render json: {"user" => @instruction.user, "assistant" => @instrcution.assistant}
        else
            render json: {"error" => "Oh, there was a problem"}, status: 500
        end
    end

    def update
    end 

    def all
    end
end
