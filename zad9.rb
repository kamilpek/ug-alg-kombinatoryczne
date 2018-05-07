def valid?(col, others)
  others.each_with_index do |c, r|
    return false if col == c or (col - c).abs == (others.size - r).abs
  end
end

def solve(n, solutions = [], cols=[])
  return solutions.push(cols) unless cols.size < n
  n.times { |col| solve(n, solutions, cols + [col]) if valid?(col, cols) }
  return solutions
end

def show_solutions(n)
  solutions = solve(n)
  for cols in solutions
    result_format = ""
    for i in 0..7
      result_format += (cols[i] + 1).to_s + " "
    end
    print result_format + "\n"
  end
  puts "Liczba rozwiązań: #{solutions.size}."
end

N = 8
show_solutions(N)
