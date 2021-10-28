module BookingsHelper
    def round_to_15_minutes
        t = DateTime.now
        rounded = Time.at((t.to_time.to_i / 900.0).round * 900)
        t.is_a?(DateTime) ? rounded.to_datetime : rounded
    end
end
