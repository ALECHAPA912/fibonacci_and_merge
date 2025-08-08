def fibs(int)
  sequence = []
  last = 0
  current = 1
  i = 2
  sequence << 0 if int > 0
  sequence << 1 if int > 1
  while int > i do
    aux = current
    current += last
    sequence << current
    last = aux
    i+=1
  end
  sequence
end

def fibs_recursive(n, seq = [])
  return [0] if n < 2  
  return [0,1] if n == 2
  seq = fibs_recursive(n-1, seq)
  seq << seq[-1] + seq[-2]
end

p fibs_recursive(8)