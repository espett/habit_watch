class PrototypesController < ApplicationController
  def watch
    @counts_db = "[" + (current_user.counts.map {|count| count.time}).join(", ") + "]"
  end

  def graph
    t = Time.now
    @dataset = current_user.counts.where("time > ?", Time.new(t.year, t.month, t.day).to_i * 1000).map {|count| (Time.at(count.time / 1000).hour.to_s) + "." + Time.at(count.time / 1000).min.to_s}
  end

end
