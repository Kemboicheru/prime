obj PrimeNumbers{
    has maxnumber:int;
    def generate_primes;
}

obj GetPrimeNumbers(PrimeNumbers){
    def init;
    override def generate_primes;
    def sieve_of_eratosthenes(n:init);
}

with entry{
    primens = GetPrimeNumbers();
    print(primens.generate_primes());
}