class TicketsController < ApplicationController
    def create
        @price = nil
        case ticketParams[:vtype]
            when 'car'
                @price = 10
            when 'bike'
                @price = 7
            when 'cycle'
                @price = 6
            when 'bigger'
                @price = 20
        end
        @ticket = Ticket.new(
            plate: ticketParams[:plate],
            vtype: ticketParams[:vtype],
            hour_in: DateTime.now,
            price: @price
        )
        if @ticket.save
            redirect_to ticket_path(@ticket)
        else
            render new_ticket_path
            flash[:error] = "Invalid credentials"
        end
    end

    def index
    end

    def show
        @ticket = Ticket.find(params[:id])
    end

    def new
    end

    def destroy
        @ticket = Ticket.find(params[:id])
        @ticket.delete
        redirect_to root_path
    end

    def bill
        @ticket = Ticket.find(params[:id])
        @ticket.update(
            hour_out: DateTime.now,
        )
        hour_in = @ticket[:hour_in]
        hour_out = @ticket[:hour_out]
        @price = ( hour_out - hour_in)/3600 * @ticket[:price]
        puts "Price is #{(hour_out - hour_in)/3600}"
        @ticket.update(
            price: @price,
        )
        redirect_to root_path
    end

    private

    def ticketParams
        params.require(:ticket).permit(:plate, :vtype)
    end
end
