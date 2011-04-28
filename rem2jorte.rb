#!/usr/bin/env ruby

require 'csv'

require 'polyglot'
require 'treetop'
require 'remparser'

#CSV.read('test/schedule_data.csv')

parser = RemindParser.new

csv_string = CSV.generate(options={:headers => true}) do |csv|
  csv << ["schedule_date", "start_time", "end_date", "end_time", "title", "content", "place", "importance", "status", "meridiem"]
  $stdin.each do |line|
    rem = parser.parse(line)
    res = rem.content_hash
    row = []
    row << res[:date].strftime("%Y/%m/%d")
    if res[:body].has_key? :time
      row << res[:body][:time][:start]
    else
      row << nil
    end
    row << res[:date].strftime("%Y/%m/%d")
    if res[:body].has_key? :time
      row << res[:body][:time][:end]
    else
      row << nil
    end
    row << res[:body][:text]
    2.times {row << nil}
    3.times {row  << 0}
    csv << row
  end
end

puts csv_string
