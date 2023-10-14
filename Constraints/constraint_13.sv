/*Use inline constraint to generate a random number between 1 to 100, 
write another constraint where variable value is equal to 150. 
Observe the output whether it will randomize or not. 
If not, how can you override that constraint. */

class q13;

  rand int a; // Just one integer variable

  constraint y { a == 150;}
  
  function void post_randomize;
    $display("Randomized Value: %d", a);
  endfunction

endclass

module top;
  q13 q;

  initial begin
    q = new;
    q.y.constraint_mode(0);
    q.randomize() with {a inside {[1:100]};};
  end

endmodule

/*
OUTPUT: Randomized Value: 75

Notes:

Case 1: If Range is [1:200] , Randomized Value: 150 even though constraint has soft keyword.

Case 2: Range is [1:100] , Randomized Value: 75 when constraint y { soft a == 150;}


Case 3: If Range is [1:100] , ERROR-Constraints are inconsistent and cannot be solved when constraint y { a == 150;}

Case 4: If Range is [1:100] , Randomized Value: 75 when constraint y { a == 150;} and q.y.constraint_mode(0) -Turned OFF Constraint y.
*/
