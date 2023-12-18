
print ' formating data'
10.times do
    
    print "."
    # print '..'
    sleep rand(0.05..0.5)
end
puts
1000.times do    
    print"\r\|"
    sleep rand(0.05..0.2)
    # sleep 0.1
    print"\r\/"
    sleep rand(0.05..0.2)
    # sleep 0.1
    print"\r\—"
    sleep rand(0.05..0.2)
    # sleep 0.1
    print"\r\\"
    sleep rand(0.05..0.1)
    # sleep 0.1

end