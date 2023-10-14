//PATTERN-----0 2 1 3 6 5 7 8
class q5;
  
  rand int a[];
  rand int temp;
  
  constraint x {a.size ==9;}
  constraint y {foreach (a[i])
                         a[i] ==i;
               }
  
  function void post_randomize;
    $display("1.Before swapping: %p",a);
  //Swapping logic
    temp=a[1];
    a[1]=a[2];
    a[2]=temp;
    
    temp = a[5];
    a[5] = a[6];
    a[6] = temp;
    
    $display("2.After swapping (Desired pattern): %p",a);
     
  endfunction 
  
endclass

module top;
  
  q5 q;
  
  initial begin
    q=new;
    q.randomize;
     
  end
  
endmodule

/*
OUTPUT:
1.Before swapping: '{0, 1, 2, 3, 4, 5, 6, 7, 8} 
2.After swapping (Desired pattern): '{0, 2, 1, 3, 4, 6, 5, 7, 8} 

Notes:
No. of elements = 9

Index:   0 1 2 3 4 5 6 7 8
Pattern: 0 2 1 3 4 6 5 7 8

a[0] = as it is
a[1] & a[2] = swapped
a[3] = as it is
a[4] = as it is
a[5] & a[6] = swapped
a[7] = as it is
a[8] = as it is

*/
    
