module ApplicationHelper
	def round_to_15_minutes(start_time = DateTime.now)
        rounded = Time.at((start_time.to_time.to_i / 900.0).round * 900)
        start_time = start_time.is_a?(DateTime) ? rounded.to_datetime : rounded
        end_time = (start_time + 1.day).end_of_day
        times = []
        while start_time < end_time
        	puts "#{start_time}"
        	times << "#{start_time}"#start_time.strftime('%Y-%m-%d %I:%m %p')
        	start_time += 15.minutes
        end
        times
    end
end
