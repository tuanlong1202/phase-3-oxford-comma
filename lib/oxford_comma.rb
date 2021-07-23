def oxford_comma(array)
    retString = ""
    size = array.size
    array.each_with_index do |item,index|
        if size == 1 || index == 0
            retString = String(item)
        elsif size == 2 && index == 1
            retString = retString + " and " + String(item)
        elsif size > 1
            if index + 1 == size
                retString = retString + ", and " + String(item) 
            elsif index + 1 < size
                retString = retString + ", " + String(item)
            end
        end
    end
    retString
end