//16 bit rand variable such that only 8th bit is randomized.

class q15;

  rand bit [15:0]a;
  
  constraint x {foreach(a[i])
    if(i==7)
      a[i] inside {[0:1]};
      else a[i]==0;}
 
   
  function void post_randomize;
    $display("Randomized data is %b",a);
    endfunction
  
endclass

module top;
  q15 q;
  initial begin
    q=new();
      q.randomize();
  end
endmodule

// OUTPUT: Randomized data is 0000000010000000
