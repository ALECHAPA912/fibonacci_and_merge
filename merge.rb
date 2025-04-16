def merge_sort(array)
  return array if array.size == 1

  return unless array.size > 1

  middle = array.size / 2
  left = merge_sort(array[0...middle])
  right = merge_sort(array[middle...])
  merge(left, right)
end

def merge(left, right)
  result = []
  while left.any? && right.any?
    if left.first < right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end