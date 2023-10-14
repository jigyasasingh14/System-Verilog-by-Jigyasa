//PATTERN-----0 1 0 2 0 3 0 4 0 5

class q6;
   
  rand int a[10];
  
  constraint x {
                foreach (a[i])
                  if (i%2==1)
                    a[i] == (i+1)/2; 
                  else
                    a[i] == 0;}
 
endclass

module top;
  q6 q;
  
  initial begin
    q=new;
    q.randomize;
    $display("Desired Pattern is % p", q.a);
  end
endmodule


/*
OUTPUT: Desired Pattern is % s'{0, 1, 0, 2, 0, 3, 0, 4, 0, 5} 

Notes:
Total elements = 10
Index-------0 1 2 3 4 5 6 7 8 9
PATTERN-----0 1 0 2 0 3 0 4 0 5

Even Index: 0
Odd Index:

a[1]=1 = (1+1)/2
a[3]=2 = (3+1)/2
a[5]=3 = (5+1)/2
a[7]=4 = (7+1)/2
a[9]=5 = (9+1)/2

(i+1)/2

*/
