def fibs(n)
  puts 'This was printed with a loop'
  
  fibo_array = []
  current_number = 0
  last_number = 0
  for i in 0..n-1
    if i == 0 || i == 1
      current_number = i
      fibo_array << current_number
      next
    end
    aux = current_number
    current_number += last_number
    last_number = aux
    fibo_array << current_number
  end
  fibo_array
end

def fibs_rec(n)
  puts "This was printed recursively"
  return [] if n < 1
  return [0] if n == 1
  return [0,1] if n == 2
  
  fibs_array = fibs_rec(n-1)
  fibs_sequence = fibs_array[-1] + fibs_array[-2] 
  fibs_array << fibs_sequence
  fibs_array
end