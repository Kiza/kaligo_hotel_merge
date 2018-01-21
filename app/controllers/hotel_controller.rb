class HotelController < ApplicationController
  def list
    suppliers = []
    if params[:suppliers]
      params[:suppliers] = params[:suppliers].split(',')
      logger.debug "Specific suppliers used: #{params[:suppliers]}"

      params[:suppliers].each do |name|
        name = name.strip
        supplier = Supplier.find_by_name(name)
        if supplier
          suppliers << supplier 
        else
          logger.debug "Supplier not found: #{name}. Skip."
        end
      end
    else
      logger.debug "All suppliers used. "
      suppliers = Supplier.all
    end

    all_hotels = ApiWorker.run(suppliers, checkin:params[:checkin], checkout:params[:checkout], 
      destination:params[:destination], guests:params[:guests])

    hotels = []
    all_hotels.each do |id, hotel|

      hotels << {id:id, price:hotel[:price], supplier:hotel[:supplier]}
    end

    render json: hotels
  end
end
