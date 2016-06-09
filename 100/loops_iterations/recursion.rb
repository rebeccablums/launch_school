def countd(start)
  if start <= 0
    puts start
  else
    puts start
    countd(start - 1)
  end
end

countd(5)
countd(20)
countd(-3)