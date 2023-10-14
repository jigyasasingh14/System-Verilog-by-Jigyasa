//Generate 10 values which are Even number between 50 to 100.

class q20;

  rand int a;
  constraint x {a>49;a<101;}  
  constraint y {(a%2==0);}
   
  function void post_randomize;
    $display("Randomized data is %d",a);
    endfunction
  
endclass

module top;
  q20 q;
  initial begin
    q=new();
    repeat(10)
      q.randomize();
  end
endmodule

/*OUTPUT:
Randomized data is          86
Randomized data is          58
Randomized data is          64
Randomized data is          56
Randomized data is          52
Randomized data is          58
Randomized data is          68
Randomized data is          54
Randomized data is          96
Randomized data is          86
*/
