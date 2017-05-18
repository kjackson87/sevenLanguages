class CsvRow
    
    def initialize(row)
        @csv_row = row
    end
    
    def method_missing name, *args
        numbers_to_name = {
            "ten" => 10,
            "nine" => 9,
            "eight" => 8,
            "seven" => 7,
            "six" => 6,
            "five" => 5,
            "four" => 4,
            "three" => 3,
            "two" => 2,
            "one" => 1
        }
        word = name.to_s.chomp
        index = numbers_to_name.fetch(word)
        @csv_row[index - 1]
    end
    
    def inspect
        return @csv_row
    end
end

module ActsAsCsv
    def self.included(base)
        base.extend ClassMethods
    end
    
    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end
    
    module InstanceMethods
        def read
            @csv_contents = []
            filename = self.class.to_s.downcase + '.txt'
            file = File.new(filename)
            @headers = file.gets.chomp.split(', ')
            index = 0
            file.each do |row|
                @csv_contents << CsvRow.new(row.chomp.split(', '))
            end
        end
        
        attr_accessor :headers, :csv_contents
        def initialize
            read
        end

        def each(&block)
            @csv_contents.each &block
        end
    end
end

class RubyCsv
    include ActsAsCsv
    acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
m.each {|row| puts row.two}