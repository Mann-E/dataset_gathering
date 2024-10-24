class InstructionsController < ApplicationController

    def new
        @instruction = Instruction.new(user: params[:user], assistant: params[:assistant])

        if @instruction.save
            render json: {"id" => @instruction.id, "user" => @instruction.user, "assistant" => @instruction.assistant}
        else
            render json: {"error" => "Oh, there was a problem"}, status: 500
        end
    end

    def update
        @instruction = Instruction.find(params[:id])

        @instruction.user = params[:user]
        @instruction.assistant = params[:assistant]

        if @instruction.save
            render json: {"id" => @instruction.id, "user" => @instruction.user, "assistant" => @instruction.assistant}
        else
            render json: {"error" => "Oh, there was a problem"}, status: 500
        end
    end 

    def all
        @instructions = Instruction.all 

        render json: @instructions
    end
end
