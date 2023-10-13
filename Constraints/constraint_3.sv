//PATTERN----9, 19, 29, 39, 49, 59, 69, 79
class q3;
  
  rand int a[];
  
  constraint x {a.size ==8;}
  constraint y {foreach (a[i])
                         a[i]==(10*i) +9;
               }
  
function void post_randomize;
  $display("Randomized data is %p",a);
endfunction

endclass


module top;
  q3 q;
  initial begin 
    q=new();
    q.randomize;
  end
endmodule 

//Randomized data is '{9, 19, 29, 39, 49, 59, 69, 79} 

/*Total number of elements=8
Index - [0] [1] [2] [3] [4] [5] [6] [7]
Pattern- 9  19  29  39  49   59  69  79
Eq.-    10x(i=0) +9 =9
        10x(i=1) +9 =19       
*/
