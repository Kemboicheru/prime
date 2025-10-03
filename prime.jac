class PrimeNumbers{
    def __init__(self:PrimeNumbers, maxnumber:int){
        self.maxnumber = maxnumber;
    }

    def generate_primes(self:Game){
        raise NotImplementedError("Subclasses must implement this method.");
    }
}

class GetPrimeNumbers(PrimeNumbers){
    def init(self: GetPrimeNumbers, maxnumber:int=100){
        super.init(maxnumber);
    }

    def generate_primes(self:GetPrimeNumbers){
        return self.sieve_of_eratosthenes(self.maxnumber);
    }
    
    def sieve_of_eratosthenes(self:GetPrimeNumbers, n:int){
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
        
}

with entry{
    primens = GetPrimeNumbers(100);
    print(primens.generate_primes());
}