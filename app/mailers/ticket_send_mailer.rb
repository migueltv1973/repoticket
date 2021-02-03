class TicketSendMailer < ApplicationMailer

    default :from => 'soporte@geosatelital.com.pe'

    # send a signup email to the user, pass in the user object that   contains the user's email address
    def send_signup_email(ticket)
      @ticket = ticket
      mail( :to => @ticket.email,
      :subject => 'Grcias por enviarnos su consulta' )
    end
end
