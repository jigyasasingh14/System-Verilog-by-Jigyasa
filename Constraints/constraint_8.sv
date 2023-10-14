// Generate the Factorial of first 5 ODD numbers

class q8;
    rand int a[];
    
    constraint x {
                a.size == 5;
                 }
    constraint y {
                  foreach (a[i]) 
                    a[i] == fact((i*2)+1); 
        
    }
        
    function int fact(int n);
        if (n == 0)
            fact= 1;
        else
            fact= n * fact(n-1);
    endfunction
endclass

module top;
    q8 q;
    
    initial begin
        q = new;
        q.randomize;
        $display ("Generated data is %p", q.a);
    end
endmodule

/* 
OUTPUT: Generated data is '{1, 6, 120, 5040, 362880} 

Notes:
Index:
a[0] = fact(1) = fact((0x2)+1)
a[1] = fact(3) = fact((1x2)+1)
a[2] = fact(5) = fact((2x2)+1)
a[3] = fact(7) = fact((3x2)+1)
a[4] = fact(9) = fact((4x2)+1)
a[i] = fact((i*2)+1)

fact(1) = 1
fact(3) = 3 x fact(2)
fact(5) = 5 x fact(4)
fact(7) = 7 x fact(6)
fact(9) = 9 x fact(8)

*/
