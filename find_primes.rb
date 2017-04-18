def isPrime(n)
  isP = true

  if (n > 1)
    (2..Math.sqrt(n)).each do |x|
      if(n % x == 0)
        isP = false
      end
    end
  else
    isP = false
  end
  isP
end

def isPrimeTwo(n)
  #For (i = 2; isPrime && I < Math.sqrt(n); i++) { isPrime = (n % i != 0) };
end

(0..100).each do |x|
  if (isPrime(x))
    puts "#{x} - Prime" else puts "#{x} - ** Not Prime" end
end