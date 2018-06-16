day   = ARGV[0].to_i
month = ARGV[1].to_s
year  = ARGV[2].to_i

$months = [{:month => "января",   :days => 31},
           {:month => "февраля",  :days => 28},
           {:month => "марта",    :days => 31},
           {:month => "апреля",   :days => 30},
           {:month => "мая",      :days => 31},
           {:month => "июня",     :days => 30},
           {:month => "июля",     :days => 31},
           {:month => "августа",  :days => 31},
           {:month => "сентября", :days => 30},
           {:month => "октября",  :days => 31},
           {:month => "ноября",   :days => 30},
           {:month => "декабря",  :days => 31}]

def is_year_leap? (year)
  if (year % 400) == 0
    return true
  elsif (year % 100) == 0
    return false
  elsif (year % 4) == 0
    return true
  else
    return false
  end
end

def days_in_year(year)
  if is_year_leap?(year)
    return 366
  else
    return 365
  end
end

def days_in_months(month, year)
  days = 0
  $months.each_with_index {|x, i|
    if x[:month] == month
      if (i > 1) and is_year_leap?(year)
        return days + 1
      else
        return days
      end
    else
      days += x[:days]
    end
    }
  return days
end

puts days_in_year(year) - (days_in_months(month, year) + day)
