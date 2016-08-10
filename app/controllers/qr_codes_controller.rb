class QrCodesController < ApplicationController
  def new
  end

  def create
    @user=current_user
    @expiry = current_user.membership_expiry_date.present? &&  current_user.membership_expiry_date > Date.today ? "Valid"+current_user.membership_expiry_date.to_s : "Expired"
   
    
    qrText= current_user.first_name+" "+current_user.last_name+"Valid Until"+current_user.membership_expiry_date.to_s
    @qr = RQRCode::QRCode.new( qrText, size: 5)
  end

  private 
    def qr_code_params
      params.require(:qr_code).permit(:text)
    end
  
end
