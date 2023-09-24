defmodule Part3 do
  def closure_func do
    outside = 10
    closure = fn -> IO.puts(outside) end
    outside = 200
    closure.()
  end

  def range_func do
    range = 1..100
    IO.puts(range)
  end

  # map set
  def map_set do
    keys = MapSet.new([:a, :b, :c])
    IO.puts(keys)
    MapSet.member?(keys, :a)
  end

  # day type
  def day_type do
    date = ~D[2019-01-01]
    IO.puts(date.year)
    IO.puts(date.month)
    IO.puts(date.day)

    time = ~T[12:00:00]
    IO.puts(time.hour)
    IO.puts(time.minute)
    IO.puts(time.second)

    naive_datetime = ~N[2019-01-01 12:00:00]
    IO.puts(naive_datetime.year)

    datetime = DateTime.from_naive!(naive_datetime, "Etc/UTC")
    IO.puts(datetime.time_zone)
  end

  def io_list do
    iolist = []
    lilist = [iolist, "this "]
    iolist = [iolist, "this "]
    iolist = [iolist, "is "]
    iolist = [iolist, "an "]
    iolist = [iolist, "io list "]
  end
end
