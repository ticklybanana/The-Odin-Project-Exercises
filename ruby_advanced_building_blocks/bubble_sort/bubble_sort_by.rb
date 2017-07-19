def bubble_sort_by array, &block
    # ERROR HANDLING
    
    # If the block is not a boolean
    if !([true, false].include? block.call("a","b"))
        return "Block is not a boolean."
    end
    # If the input is not an array
    if !array.is_a? Array
        return "Please enter an array as input." 
    end
    # If the array is empty
    if array.length == 0 
       return []
    end
    # Filter out all the values we can't calculate
    array = array.select do |i|
        i != "" && i != false && i != true && i != nil
    end
    
    # CALCULATION
    
    # We will change everything to a string and remember that we did that
    # array_mem will remember what we changed and what it was before
    array_mem = []
    
    for i in 0...array.length do
        case array[i].class.name
        when "Fixnum"
            array_mem[i] = "integer"
            array[i] = array[i].to_s
        when "Float"
            array_mem[i] = "float"
            array[i] = array[i].to_s
        else 
            array_mem[i] = "string"
        end
    end
    
    # Sort the array using the bubble sort procedure
    sorted = false
    
    while !sorted do
        sorted = true
        for i in 0...(array.length - 1) do
            # If the condition that is passed with the block is true
            if block.call(array[i], array[i + 1])
                # Change their places
                array[i], array[i + 1] = array[i + 1], array[i]
                array_mem[i], array_mem[i + 1] = array_mem[i + 1], array_mem[i]
                # Repeat the procedure
                sorted = false
            end
        end
    end
    
    # If we changed a number to a string we bring it back to a number
    for i in 0...array_mem.length do
        case array_mem[i]
        when "integer"
            array[i] = array[i].to_i
        when "float"
            array[i] = array[i].to_f
        end
    end
    return array
end
