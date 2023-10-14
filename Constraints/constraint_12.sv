//Generate a random variable between 1 to 200.

class q12;

  rand int a; // Just one integer variable

  constraint x {
    a inside {[1:200]};  // Value between 1 and 100
  }

  function void post_randomize;
    $display("Randomized Value: %d", a);
  endfunction

endclass

module top;
  q12 q;

  initial begin
    q = new;
    q.randomize();
  end

endmodule

//OUTPUT: Randomized Value: 43
