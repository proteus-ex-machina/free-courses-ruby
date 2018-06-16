t1 = ARGV[0].to_i
t2 = ARGV[1].to_i

def hours_str (hours)
  if hours == 0 then return ""
  else
    case hours % 100
      when 11..19 then return hours.to_s + " " + "часов"
      else
        case hours % 10
          when 1    then return hours.to_s + " " + "час"
          when 2..4 then return hours.to_s + " " + "часа"
          else           return hours.to_s + " " + "часов"
        end
    end
  end
end

def minutes_str (minutes)
  if minutes == 0 then return ""
  else
    case minutes
      when 11..19 then return minutes.to_s + " " + "минут"
      else
        case minutes % 10
          when 1    then return minutes.to_s + " " + "минута"
          when 2..4 then return minutes.to_s + " " + "минуты"
          else           return minutes.to_s + " " + "минут"
        end
    end
  end
end

def seconds_str (seconds)
  if seconds == 0 then return ""
  else
    case seconds
      when 11..19 then return seconds.to_s + " " + "секунд"
      else
        case seconds % 10
          when 1    then return seconds.to_s + " " + "секунда"
          when 2..4 then return seconds.to_s + " " + "секунды"
          else           return seconds.to_s + " " + "секунд"
        end
    end
  end  
end

time = t1 + t2
if time == 0 
  puts "0 секунд"
else
  hours = time.divmod(3600)
  time = hours[1]
  minutes = time.divmod(60)
  time = minutes[1]
  seconds = time
  puts (hours_str(hours[0]) + " " + minutes_str(minutes[0]) + " " + seconds_str(minutes[1])).strip
end
