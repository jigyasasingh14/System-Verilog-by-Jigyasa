//Code such that one constraint is for value 100 to 200 while other is from 0 to 100. Observe the results.

class q21;

  rand int a;
  constraint x { soft a>100;a<200;}  
  constraint y { a>0; soft a<100;}
   
  function void post_randomize;
    $display("Randomized data is %d",a);
    endfunction
  
endclass

module top;
  q21 q;
  initial begin
    q=new();
    repeat(10)
      q.randomize();
  end
endmodule

/*
OUTPUT:
Randomized data is          75
Randomized data is          57
Randomized data is           4
Randomized data is          40
Randomized data is          20
Randomized data is          45
Randomized data is          12
Randomized data is          31
Randomized data is          48
Randomized data is          75

Notes:
Without using soft keyword: ERROR
Use soft keyword at different places within constraint x & y, Observe how randomized data changes.
*/
