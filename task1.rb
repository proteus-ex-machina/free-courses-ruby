str_arr = ARGV[0].to_s.downcase.scan(/\w/)

def check?(arr)
  if arr.length >= 1 and arr.length <= 10000
    return true
  else
    return false
  end
end

if check?(str_arr)
  if str_arr == str_arr.reverse
    puts "YES"
  else
    puts "NO"
  end
else
  return "NO"
end
