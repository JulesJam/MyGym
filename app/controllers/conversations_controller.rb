class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
    @users = User.where.not(id: current_user.id)
  end

  def create
     if Conversation.between(params[:sender_id], params[:receiver_id]).present?
      #this cehcks to see if there is an exisiting conversation between current user and another use the prsent checks the respones is not empty
      #because there will only ever be one conversation we use first 
       @conversation = Conversation.between(params[:sender_id], params[:receiver_id]).first
     else
      #the bang means a message is thrown if there is an error otherwise there will be silent error
       @conversation = Conversation.create!(conversation_params)
     end

     redirect_to conversation_messages_path(@conversation)
   end

   private
     def conversation_params
       params.permit(:sender_id, :receiver_id)
     end
end
