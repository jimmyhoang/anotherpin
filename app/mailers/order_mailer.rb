class OrderMailer < ApplicationMailer

  def receipt(order)
    @order = order

    mail to: @order.email, subject: "Thank you for ordering from Another Pin Co"
  end
end
