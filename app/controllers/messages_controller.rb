class MessagesController < ApplicationController
    def create
        #byebug
        message=current_user.messages.build(params.require(:message).permit(:body))
        message.save

        ActionCable.server.broadcast "chatroom_channel",  messg:message.body
        
    end       
end
