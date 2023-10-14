//Generate a phone number where 9 & 8th bit are always 1 1, 7 to 5th bit are 0 and 4 to 0th bit are any random values less than 8. 

class q9;

  rand int digits[0:9]; // Array of 10 elements each representing a digit of the phone number

  constraint x {
    foreach (digits[i]) {
      if (i >= 8 && i <= 9) digits[i] == 1;
      if (i >= 5 && i <= 7) digits[i] == 0;
      if (i < 5) digits[i] inside {[0:7]};
    }
  }

  function void post_randomize;
    $display("Generated phone number: %p", digits);
  endfunction

endclass

module top;
  q9 q;

  initial begin
    q = new;
    q.randomize;   
  end

endmodule

/*
OUTPUT: Generated phone number: '{0, 7, 1, 4, 4, 0, 0, 0, 1, 1} 

Notes:
Index: 0 1 2 3 4 5 6 7 8 9
No.:   x x x x x 0 0 0 1 1 (x<8)
*/
