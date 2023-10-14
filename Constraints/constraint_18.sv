//Constraint such that Generated values from this set 25 27 30 36 40 45 only but without using set membership.

class q18;

  rand int a;
  constraint x {a>24;a<46;}  
  constraint y {(a%5==0) || (a%9==0); a!=35;}
   
  function void post_randomize;
    $display("Randomized data is %d",a);
    endfunction
  
endclass

module top;
  q18 q;
  initial begin
    q=new();
    repeat(10)
      q.randomize();
  end
endmodule

/*
OUTPUT:
Randomized data is          45
Randomized data is          40
Randomized data is          36
Randomized data is          45
Randomized data is          40
Randomized data is          30
Randomized data is          40
Randomized data is          45
Randomized data is          40
Randomized data is          40
*/
