#MIT license, copyright daniel lissner (speakingcode.com) 2013

class Pompous
  def pomodoro
    cls

    3.times { countdown 'work', 25; countdown 'break', 5 }
    countdown 'work', 25; countdown 'break', 15;
  end

  def countdown message, minutes
    end_time = Time.now + (60 * minutes)
    
    while (Time.now < end_time)
      print "\r#{message}: #{((end_time - Time.now) / 60).floor}:#{((end_time - Time.now) % 60).floor.to_s.rjust(2,'0')}"
      sleep 1
      STDOUT.flush
    end
  end

  def cls
    if $stdout.isatty
      print "\e[2J\e[f"
    else
      system('clear')
    end
  end
end
