//PATTERN-----5 -10 15 -20 25 -30

class q1;

  rand int a[];
  constraint x {a.size==8;}
  constraint y {foreach(a[i])
                     if (a[i]%2==0)
                         a[i]==(i+1)*5;
                     else
                         a[i]==-(i+1)*5;
               }  
   
  function void post_randomize;
      $display("Randomized data is %p",a);
    endfunction
  
endclass

module top;
  
  q1 q;
  
  initial begin
    
    q=new();
    q.randomize;
    
  end
endmodule

//OUTPUT-Randomized data is '{-5, 10, -15, 20, -25, 30, -35, 40} 
