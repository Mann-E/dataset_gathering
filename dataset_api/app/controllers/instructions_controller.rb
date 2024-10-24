class InstructionsController < ApplicationController

    def new
        @instruction = Instruction.new(user: params[:user], assistant: params[:assistant])

        if @instruction.save
            render json: {"user" => @instruction.user, "assistant" => @instrcution.assistant}
        end
    end

    def update
    end 

    def all
    end
end
