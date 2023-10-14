//Generate constraint for a variable [15:0] where [0:7] has to randomize first and [8:15] has to randomize second.

class q10;

  rand bit [15:0] y; 
  rand bit [7:0] a;
  rand bit [7:0] b;

 constraint x {solve a before b;}

  function void post_randomize;
     y = {a,b};
    $display("Randomized Value: %b", y);
   
  endfunction

endclass

module top;
  q10 q;

  initial begin
    q = new;
    q.randomize();
  end

endmodule

// OUTPUT: Randomized Value: 0010110111010001
