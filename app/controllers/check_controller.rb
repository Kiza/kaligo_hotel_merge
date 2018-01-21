class CheckController < ApplicationController
  def live
    data = {live:true}

    render json: data
  end

  def health
    data = {health:{supplier_count:Supplier.all.size, cached_record_count:CacheRecord.all.size}}

    render json: data
  end
end
