//Constraint for 32 bit rand variable such that it has 12 number of 1's non-consecutively.

class q1;

  rand bit [31:0]a;
  constraint x {$countones(a)==12;}  
  constraint y {foreach (a[i])
                 if (i<31){
                       if (a[i]==1)
                           a[i+1] !=1;
                          }}
   
  function void post_randomize;
    $display("Randomized data is %b",a);
    endfunction
  
endclass

module top;
  q1 q;
  initial begin
    q=new();
      q.randomize();
  end
endmodule

/*

OUTPUT: Randomized data is 10010100100010000100101010100101

Notes:
Earlier I wrote my constraint y like this:
constraint y {foreach (a[i])
    if (a[i]==1)
      a[i+1] !=1;}
which showed me ERROR: Constraint solver out of bound.

Reason: The error was due to accessing an out-of-bounds index in your constraint when i is at its maximum value (31). 
In this case, a[i+1] will access a[32], which is out-of-bounds for a 32-bit variable.

To resolve this, I had to iterate till one less than the total number of bits in the foreach loop.
                   
*/
                
