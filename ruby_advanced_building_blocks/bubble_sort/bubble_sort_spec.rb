require "bubble_sort"

describe "bubble_sort" do 
    describe "Should sort successfully..." do
        
        it "at least one item" do
            array = [0,1,2,4,3,5]
            expect(bubble_sort(array)).to eq([0,1,2,3,4,5])    
        end
        
        it "all the items" do
            array = [5,2,4,1,3,0]
            expect(bubble_sort(array)).to eq([0,1,2,3,4,5])
        end
        
        it "despite duplicate values" do
            array = [5,2,5,1,2,6,0]
            expect(bubble_sort(array)).to eq([0,1,2,2,5,5,6])
        end
        
        it "strings too" do
            array = ["america","japan","greece","sweden"] 
            expect(bubble_sort(array)).to eq(["america","greece","japan","sweden"])
        end
    end
    
    describe "Error handling:" do
        
        it "Does not produce an error when passed a single argument" do
            array = [1]
            expect(bubble_sort(array)).to eq([1])
        end
        
        it "Returns an empty array when passed nothing" do
            array = []
            expect(bubble_sort(array)).to eq([])
        end
        
        it "Filters out any empty or false values" do
            array = [5,2,nil,"",3,false]
            expect(bubble_sort(array)).to eq([2,3,5])
        end
        
        it "Accepts numbers and letters at the same time" do
            array = [3,1,5,"a","c"]
            expect(bubble_sort(array)).to eq([1,3,5,"a","c"])
        end
        
        it "Does not accept non array values" do
            input = 123
            expect(bubble_sort(input)).to eq("Please enter an array as input.")
        end
        
        it "Returns integers as integers and floats as floats" do
            array = [1,3.2,1,3.2,5.0,"1hello","abc"] 
            expect(bubble_sort(array)).to eq([1,1,"1hello",3.2,3.2,5.0,"abc"])
        end
    end
end