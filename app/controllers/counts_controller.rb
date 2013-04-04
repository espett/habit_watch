class CountsController < ApplicationController
  def create
    ActiveRecord::Base.transaction do
      params['counts'].each do |count|
        cl = Count.new
        cl.time = count
        cl.user_id = current_user.id
        cl.save
      end

    end

    render :json => current_user.counts.map {|count| count.time}
  end

end
