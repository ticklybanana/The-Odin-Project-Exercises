def stock_picker array
    highest_diff = 0;
    pair = [0,0]
    # For every single day i
    for i in 0...array.length do
        # For every day after the day i
        for j in i...array.length do
            # If buying and selling at these days is the highest payoff so far
            if (array[j] - array[i]) > highest_diff
            # Remember that payoff
            highest_diff = array[j] - array[i] 
            # Remember the days that gave that payoff
            pair = [i,j]
            end
        end
    end
    return pair
end
