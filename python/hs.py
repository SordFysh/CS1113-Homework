'''' hs is a function that takes a natural number n and reduces it to 1 by applying different opporations to n depending on whether it is even or odd. The final value outputted is the length of the sequence from the original n to 1'''

def hs (n, count = 1):
    if n > 0 and (n*2) % 2 == 0:
        if n != 1:
            if n % 2 == 0:
                print (n)
                return (hs(n//2, count + 1))
            else: print (n)
            return (hs(3*n +1, count + 1))
        else: print (n)
        print (count)
    else: print ("ERROR: given value for hs is not a natural number")
            
