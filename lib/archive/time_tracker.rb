def format_duration(time)
  return "now" if time == 0
  return format_time(time, "second") if time < 60
  time = time.divmod(60) # [minutes, seconds]
  if time[0] < 60
    return format_time(time[0], "minute") if time[1] == 0
    return "#{format_time(time[0], "minute")} and #{format_time(time[1], "second")}"
  else
    time = get_hours(time)
  end
  if time[0] < 24
    return format_time(time[0], "hour")  if time[1] == 0 && time[2] == 0
    return "#{format_time(time[0], "hour")} and #{format_time(time[1], "minute")}" if time[2] == 0
    return "#{format_time(time[0], "hour")}, #{format_time(time[1], "minute")} and #{format_time(time[2], "second")}"
  else
    time = get_days(time)
  end
  if time[0] < 365
    if time[1] == 0 # no hours
      return format_time(time[0], "day") if time[2] == 0 && time[3] == 0
      return "#{format_time(time[0], "day")} and #{format_time(time[2], "minute")}" if time[3] == 0
      return "#{format_time(time[0], "day")} and #{format_time(time[3], "second")}" if time[2] == 0
      return "#{format_time(time[0], "day")}, #{format_time(time[2], "minute")} and #{format_time(time[3], "second")}"
    elsif time[2] == 0 # no minutes
      return "#{format_time(time[0], "day")} and #{format_time(time[1], "hour")}" if time[3] == 0
      return "#{format_time(time[0], "day")}, #{format_time(time[1], "hour")} and #{format_time(time[3], "second")}"
    elsif time[3] == 0 # no seconds
      return "#{format_time(time[0], "day")}, #{format_time(time[1], "hour")} and #{format_time(time[2], "minute")}"
    else
      return "#{format_time(time[0], "day")}, #{format_time(time[1], "hour")}, #{format_time(time[2], "minute")} and #{format_time(time[3], "second")}"
    end
  else
    seconds = time.pop
    minutes = time.pop
    hours = time.pop
    time = time[0].divmod(365).push(hours).push(minutes).push(seconds) # [years, days, hours, minutes, seconds]
  end

  if time[1] == 0 # no days
    if time[2] == 0 # and no hours
      return format_time(time[0], "year") if time[3] == 0 && time[4] == 0
      return "#{format_time(time[0], "year")} and #{format_time(time[3], "minute")}" if time[2] == 0 && time[4] == 0
      return "#{format_time(time[0], "year")} and #{format_time(time[4], "second")}" if time[3] == 0 && time[4] == 0
      return "#{format_time(time[0], "year")}, #{format_time(time[3], "minute")} and #{format_time(time[4], "second")}"
    elsif time[3] == 0 # and no minutes
      return "#{format_time(time[0], "year")} and #{format_time(time[2], "hour")}" if time[4] == 0
      return "#{format_time(time[0], "year")}, #{format_time(time[2], "hour")} and #{format_time(time[4], "second")}"
    else
      return "#{format_time(time[0], "year")}, #{format_time(time[2], "hour")} and #{format_time(time[3], "minute")}" if time[4] == 0
      return "#{format_time(time[0], "year")}, #{format_time(time[2], "hour")} #{format_time(time[3], "minute")} and #{format_time(time[4], "second")}"
    end
  elsif time[2] == 0 # no hours
    return "#{format_time(time[0], "year")} and #{format_time(time[1], "day")}" if time[3] == 0 && time[4] == 0
    # yrs day mins seconds
    return "#{format_time(time[0], "year")}, #{format_time(time[1], "day")} and #{format_time(time[4], "second")}" if time[3] == 0
    return "#{format_time(time[0], "year")}, #{format_time(time[1], "day")} and #{format_time(time[3], "second")}" if time[4] == 0
    return "#{format_time(time[0], "year")}, #{format_time(time[1], "day")} #{format_time(time[3], "minute")} and #{format_time(time[4], "second")}"
  elsif time[3] == 0 # no minutes
    return "#{format_time(time[0], "year")}, #{format_time(time[1], "day")} #{format_time(time[2], "hour")} and #{format_time(time[4], "second")}"
  elsif time[4] == 0 # no seconds
    return "#{format_time(time[0], "year")}, #{format_time(time[1], "day")} #{format_time(time[2], "hour")} and #{format_time(time[3], "minute")}"
  else
    return "#{format_time(time[0], "year")}, #{format_time(time[1], "day")}, #{format_time(time[2], "hour")}, #{format_time(time[3], "minute")} and #{format_time(time[4], "second")}"
  end
end

def format_time(int, measurement_singular)
  return "#{int} #{measurement_singular}" if int == 1
  case measurement_singular
  when "second"
    return "#{int} seconds"
  when "minute"
    return "#{int} minutes"
  when "hour"
    return "#{int} hours"
  when "day"
    return "#{int} days"
  when "year"
    return "#{int} years"
  end
end

def get_hours(time)
  seconds = time.pop
  time = time[0].divmod(60).push(seconds) # [hours, minutes, seconds]
end

def get_days(time)
  seconds = time.pop
  minutes = time.pop
  time = time[0].divmod(24).push(minutes).push(seconds) # [days, hours, minutes, seconds]
end
