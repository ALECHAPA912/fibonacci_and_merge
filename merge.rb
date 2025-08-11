def merge_sort(arr)
#[3,1,4,0]
  if arr.length == 1
    return arr
  end

  mid = arr.length / 2
  a = merge_sort(arr[0..mid-1])
  b = merge_sort(arr[mid..-1])
  arr_sorted = []

  while !a.empty? || !b.empty?
    if a.empty?
      arr_sorted << b.shift
      next
    elsif b.empty?
      arr_sorted << a.shift
      next
    end
    if a.first < b.first
      arr_sorted << a.shift
    else 
      arr_sorted << b.shift
    end
  end
  arr_sorted

end

#pito = [3, 2, 1, 13, 8, 5, 0, 1]
pete = [105, 79, 100, 110]
#hola = [3,1,4,0]
p merge_sort(pete)