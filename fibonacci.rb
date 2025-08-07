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

def fibs_recursive(n,sequence=[])
  return [0] if n == 1
  return [0,1] if n == 2
  fibs_recursive(n-1, sequence) +  fibs_recursive(n-2, sequence)
end
