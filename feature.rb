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
end

def bubble_sort_by(array)
  loop do
    moved = false
    (array.length - 1).times do |i|
      block_comparison = yield(array[i], array[i + 1])
      if block_comparison.positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        moved = true
      end
    end
    break unless moved
  end
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
