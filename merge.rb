def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2
  left = merge_sort(arr[0..mid-1])
  right = merge_sort(arr[mid..])
  merge(left, right)
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first < right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

#pito = [3, 2, 1, 13, 8, 5, 0, 1]
pete = [105, 79, 100, 110]
#hola = [3,1,4,0]
p merge_sort(pete)