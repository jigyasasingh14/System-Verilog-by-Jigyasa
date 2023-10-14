// Generate the Factorial of first 5 even numbers

class q7;
    rand int a[];
    
    constraint x {
                a.size == 5;
                 }
    constraint y {
                  foreach (a[i]) 
                  a[i] == fact(i*2); 
        
    }
        
    function int fact(int n);
        if (n == 0)
            fact= 1;
        else
            fact= n * fact(n-1);
    endfunction
endclass

module top;
    q7 q;
    
    initial begin
        q = new;
        q.randomize;
        $display ("Generated data is %p", q.a);
    end
endmodule

/*
OUTPUT: Generated data is '{1, 2, 24, 720, 40320} 

Notes:
Even Index:
a[0] = fact(0) = fact(0x2)
a[1] = fact(2) = fact(1x2)
a[2] = fact(4) = fact(2x2)
a[3] = fact(6) = fact(3x2)
a[4] = fact(8) = fact(4x2)
a[i] = fact(i*2)

fact(0) = 1
fact(2) = 2 x fact(1)
fact(4) = 4 x fact(3)
fact(6) = 6 x fact(5)
fact(8) = 8 x fact(7)

Factorial calculations:
fact(0) : n=0 so return 1
fact(2) : n=2 so fact(2)= 2 x fact(1) = 2 x 1 = 2
fact(4) : n=4 so fact(4)= 4 x fact(3) = 4 x 3 x fact(2) = 24
fact(6) : n=6 so fact(6)= 6 x fact(5) = 6 x 5 x fact(4) = 720 and so on..
*/
