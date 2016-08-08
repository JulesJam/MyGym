class QrCodesController < ApplicationController
  def new
  end

  def create
    @user=current_user
    qrText= current_user.first_name+" "+current_user.last_name+"Membership Status "
    @qr = RQRCode::QRCode.new( qrText, size: 4)
  end

  private 
    def qr_code_params
      params.require(:qr_code).permit(:text)
    end
  
end
