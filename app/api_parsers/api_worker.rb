class ApiWorker
  def self.sync_run(suppliers, args={})
    all_hotels = {}

    suppliers.each do |supplier|
      supplier.init_parser

      hotels = supplier.load_data(args[:checkin], args[:checkout], 
          args[:destination], args[:guests])

      hotels.each do |id, price|
        if all_hotels.key?(id)
          if all_hotels[id][:price] > price
            all_hotels[id] = {price:price, supplier:supplier.name}
          end
        else
          all_hotels[id] = {price:price, supplier:supplier.name}
        end
      end

    end

    return all_hotels
  end


  def self.run(suppliers, args={})
    # async_runner 
    # TODO: thread pool need to be added to improve performance.

    threads = []
    suppliers.each do |supplier|
      thread = Thread.new do
        supplier.init_parser

        Thread.current[:retrun] = supplier.load_data(args[:checkin], args[:checkout], 
          args[:destination], args[:guests])

        Thread.current[:supplier] = supplier.name
      end

      threads << thread
    end

    all_hotels = {}
    threads.each do |thread|
      thread.join
      hotels = thread[:retrun]
      supplier_name = thread[:supplier]

      hotels.each do |id, price|
        if all_hotels.key?(id)
          if all_hotels[id][:price] > price
            all_hotels[id] = {price:price, supplier:supplier_name}
          end
        else
          all_hotels[id] = {price:price, supplier:supplier_name}
        end
      end
    end

    return all_hotels
  end
end