def first(array)
  result = []

  array.each do |element|
    k = []
    element.each_with_index do |el, index|
      k << [index, el] unless el.nil?
    end
    result << k
  end
  result
end

def second(array)
  something = array[0].zip array[1]

end

array = [[1, nil, nil, nil], [nil, 2, 5, nil], [6, nil, nil, 7], [nil, 3, nil, 4]]

p first(array)