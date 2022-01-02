class MachinesController < ApplicationController
  def index
    @owner = Owner.find(params[:owner_id])
  end

  def show
    @machine = Machine.find(params[:id])

    if @machine.has_snacks?
      @status = "Average Snack Price: $#{@machine.avg_snack_price}"
    else
      @status = "Machine is Empty"
    end
  end
end
