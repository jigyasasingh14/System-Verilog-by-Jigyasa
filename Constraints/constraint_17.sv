//Constraint such that Generated values from this set: 25 27 30 36 40 45 only.

class q17;

  randc int a;

  constraint x { a inside {25, 27, 30, 36, 40, 45}; }
   
  function void post_randomize;
    $display("Randomized data is %d", a);
  endfunction
  
endclass

module top;
  q17 q;
  initial begin
    q = new();
    repeat(6) 
    q.randomize();  
  end
endmodule

/* 
OUTPUT:
Randomized data is          30
Randomized data is          45
Randomized data is          27
Randomized data is          40
Randomized data is          36
*/
Randomized data is          25
