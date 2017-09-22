class TicketsController < ApplicationController
    def create
        puts "This is a test #{VehicleType.find_by(name: ticketParams[:vtype])[:id]}"
        if Ticket.where(hour_out: nil).count > 9
            flash[:error] = 'No spaces available, try later'
            redirect_to root_path
            return nil
        end
        @current_car = Ticket.where("hour_out is NULL AND plate = ?", ticketParams[:plate]).first

        if @current_car
            flash[:error] = 'The vehicle has an open ticket'
            redirect_to root_path
            return nil
        end
        
        @ticket = Ticket.new(
            plate: ticketParams[:plate],
            vtype_id: VehicleType.find_by(name: ticketParams[:vtype])[:id],
            hour_in: DateTime.now,
        )
        if @ticket.save
            redirect_to ticket_path(@ticket)
        else
            flash[:error] = "Invalid content #{@ticket.errors.messages}"
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
        puts "Price is #{VehicleType.find(@ticket[:vtype_id])[:price]}"
        @price = ( hour_out - hour_in)/3600 * VehicleType.find(@ticket[:vtype_id])[:price]
        @ticket.update(
            price: @price
        )
        redirect_to root_path
    end

    private

    def ticketParams
        params.require(:ticket).permit(:plate, :vtype)
    end
end
