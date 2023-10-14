//PATTERN-----1 1 2 2 3 3 4 4 5 5 6 6

class q4;
  rand int a[12]; // Fixed array size

  constraint y {
    foreach (a[i]) {
      if (i % 2 == 0) 
        a[i] == (i / 2) + 1;
      else
        a[i] == a[i-1];
    }
  }

endclass

module top;
  q4 q;

  initial begin
    q = new;
    if (q.randomize()) 
      $display("Pattern: %p", q.a);
    else
      $display("Randomization failed");
  end
endmodule

/*
OUTPUT: Pattern: '{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6} 

Notes:
Index i     0 1 2 3 4 5 6 7 8 9 10 11
PATTERN-----1 1 2 2 3 3 4 4 5 5  6  6

Number of elements =12

Even Index :
0 2 4 6 8 10
1 2 3 4 5 6

(0/2)  +1 =1

(2/2)  +1 =2

(4/2)  +1 =3

(6/2)  +1 =4

(8/2)  +1 =5

(10/2) +1 =6

(i/2)+1

Odd Index:
a[i]=a[i-1]
*/
