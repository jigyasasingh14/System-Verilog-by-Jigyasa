//Generate 21 number of 1's for size of 64 bit.

class q11;

  rand bit [63:0] y; 

  constraint c {$countones(y) == 21;}

  function void post_randomize;
    $display("Randomized Value: %b", y);
  endfunction

endclass

module top;
  q11 q;

  initial begin
    q = new;
    q.randomize();
  end

endmodule

//OUTPUT: Randomized Value: 0011010010001011000111000000000010000000010001100011010001100011
