//Constraints such that Even number take odd locations and vice versa.

class q16;
      rand int a[];
  constraint y {a.size inside {[10:20]};}
  constraint z{foreach(a[i])
                                    a[i] inside {[1:100]};}
  constraint x{foreach(a[i])
                              if(i%2==0)
                    a[i]%2==1;
else
                                    a[i]%2==0;}
      function void post_randomize();
        $display("Randomized data is %0p",a);
      endfunction
endclass
q16 q;
module test;
      initial

begin q=new;
      q.randomize;
end
endmodule

//OUTPUT: Randomized data is '{25, 66, 3, 74, 87, 68, 5, 96, 3, 54, 31, 74} 

