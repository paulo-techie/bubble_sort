array = [5, 1, 7, 9, 32]
def bubble_sort(array)
  loop do
    moved = false
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        moved = true
      end
    end
    break unless moved
  end
  return array
end
  print bubble_sort([5, 1, 7, 9, 32])