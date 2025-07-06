/*
Declare and Initialize an Array

 oDeclare a static array of 8 integers.

 oInitialize it with values from 1 to 8.

 oPrint all values using a foreach loop.

Sum of Array Elements

 oCreate a function that takes a bit [7:0] array and returns the sum of all elements.*/

module sumArr;
  bit [7:0] arr[8] = '{8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd8};
  bit [31:0] sumTotal;
  initial
    begin
      foreach(arr[i])
        begin
        $display("The value of array element at index i=%d is %d",i,arr[i]);
        sumTotal = sumArr(arr[i]);
        end
      $display("Sum of array element is %d",sumTotal);
    end
  
  function bit [31:0] sumArr(bit [7:0] data);
      static int sumTotal;//In a module the function is static by default
      sumTotal += data;
      return sumTotal;
  endfunction  
endmodule    
