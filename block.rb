
    def test
        puts "kfdsfdjk"
        yield 10
        puts "jdksdsahd"
        yield 5
    end  
    test {|i| puts "this block is called: #{i}"}
