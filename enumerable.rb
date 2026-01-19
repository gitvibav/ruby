p [1, 2, 3].map { |n| n * 2 }

p [1, 2, 3, 4].select {|n| n.even?}

p [0,2,3].reduce(0) { |sum,n| sum + n }
