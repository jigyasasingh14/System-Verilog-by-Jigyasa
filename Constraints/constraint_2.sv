//PATTERN-----1 2 3 4 5 5 4 3 2 1

class q2;
  
  rand int a[];
  
  constraint x {a.size == 10;}
  constraint y { foreach (a[i])
                        if (i<5)
                          a[i]==i+1;
                        else
                           a[i]==10-i;
               }
  
  function void post_randomize;
    $display("Randomized data is %p",a);
  endfunction
  
endclass

module top;
  q2 q;
    initial begin
    q=new();
    q.randomize;
  end
endmodule 
  
//OUTPUT - Randomized data is '{1, 2, 3, 4, 5, 5, 4, 3, 2, 1} 
