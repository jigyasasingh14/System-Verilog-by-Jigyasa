//Constraint such that generated values are 25 27 30 36 40 45 in the exact order.

class q19;

  rand int a [6];

  constraint x { 
    a[0] == 25;
    a[1] == a[0] + 2;
    a[2] == a[1] + 3;
    a[3] == a[2] + 6;
    a[4] == a[3] + 4;
    a[5] == a[4] + 5;
  }
   
  function void post_randomize;
    $display("Randomized data is %p", a);
  endfunction
  
endclass

module top;
  q19 q;
  initial begin
    q = new();
    q.randomize();
  end
endmodule

/*

OUTPUT: Randomized data is '{25, 27, 30, 36, 40, 45} 

Notes: 
Other way of writing constraint x would be:
constraint x { 
             a[0] == 25;
    foreach (a[i]) 
        if (i == 1)
            a[i] == a[i-1] + 2;
        else if (i == 2)
            a[i] == a[i-1] + 3;
        else if (i == 3)
            a[i] == a[i-1] + 6;
        else if (i > 3)
            a[i] == a[i-1] + i;

*/
