impl PrimeNumbers.generate_primes{
        raise NotImplementedError("Subclasses must implement this method.");
}

impl GetPrimeNumbers.init{
    self.maxnumber = input('Enter the maximum number to generate primes:');
}
impl GetPrimeNumbers.generate_primes{
    
    if self.maxnumber.isdigit() and int(self.maxnumber) > 1 {
        return self.sieve_of_eratosthenes(int(self.maxnumber));
    } else {
        return "That's not a valid number for generating prime numbers! Try again.";
    }
}

impl GetPrimeNumbers.sieve_of_eratosthenes(n:int){
        is_prime = [True] * (n + 1);
        p = 2;
        while (p * p <= n){
            if (is_prime[p] == True){
                for i in range(p * p, n + 1, p){
                    is_prime[i] = False;
                }
            }
            p += 1;
        }
        prime_numbers = [p for p in range(2, n) if is_prime[p]];
        return prime_numbers;
}
    