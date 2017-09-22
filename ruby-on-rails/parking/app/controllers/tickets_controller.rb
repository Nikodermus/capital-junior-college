class TicketsController < ApplicationController
    def create
        if Ticket.where(hour_out: nil).count > 9
            flash[:error] = 'No spaces available, try later'
            redirect_to root_path
            return nil
        end
        @current_car = Ticket.where("hour_out is NULL AND plate = ?", ticketParams[:plate]).first
        puts Ticket.where(plate: 'a3')

        puts "Is this car in the parking? #{@current_car}"
        if @current_car
            flash[:error] = 'The vehicle has an open ticket'
            redirect_to root_path
            return nil
        end
        @price = nil
        case ticketParams[:vtype]
            when 'car'
                @price = 10000
            when 'bike'
                @price = 7000
            when 'cycle'
                @price = 6000
            when 'bigger'
                @price = 20000
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
            flash[:error] = "Invalid credentials"
            render new_ticket_path
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
