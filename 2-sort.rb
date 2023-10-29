result = []
ARGV.each do |arg|
    # if not an integer skip
    next if arg !~ /^-?[0-9]+$/

    # turn into an integer
    i_arg = arg.to_i

    # append it if result is empty or argument is larger than final element.
    if result.empty? || result.last <= i_arg
        result << i_arg
    else
        # insert result at the right position
        result.each_with_index do |num, index|
            if num > i_arg
                result.insert(index, i_arg)
                break
            end
        end
    end
end

puts result
