def grep(filename, string)
    line_num = 0
    File.readlines(filename).each do |line|
        line_num += 1
        if line.include? string
            print "#{line_num}: #{line}"
        end
    end
end

grep(ARGV[0], ARGV[1])