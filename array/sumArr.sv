// Code your design here
/*Declare and Initialize an Array

->Declare a static array of 8 integers.

->Initialize it with values from 1 to 8.

->Print all values using a foreach loop.

Sum of Array Elements

->Create a function that takes a bit [7:0] array and returns the sum of all elements.

Find Maximum Element

->Write a task that finds and prints the maximum value in a bit [15:0] static array.

Reverse Array

->Create a function to reverse a static array and return the reversed array.*/
module sumArr;
  bit [7:0] arr[8] = '{8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd8};
  bit [7:0] revArr[8];
  bit [31:0] sumTotal;
  bit [15:0] maxArrVal;
  initial
    begin
      foreach(arr[i])
        begin
        $display("The value of array element at index i=%d is %d",i,arr[i]);
        sumTotal = sumArr(arr[i]);
        maxArrVal = maxArrValue(arr[i]);
          
          reverseArr(arr[i],revArr[8-i-1]);
        
        end
      
      foreach(revArr[i])
        begin
          $display("The value of the elements at index  %d in the reversed array is %d", i,revArr[i]);
        end
        
      $display("Sum of array element is %d",sumTotal);
      $display("Max value in array is %d" ,maxArrVal);
    end
  
  function bit [31:0] sumArr(bit [7:0] data);
      static int sumTotal;
      sumTotal += data;
      return sumTotal;
  endfunction  
  function bit [15:0] maxArrValue(bit [7:0] data);
    static int maxVal;
    if(data >= maxVal)
      maxVal = data;
    return maxVal;
  endfunction
  
  function reverseArr(input bit [7:0] data , output  bit [7:0] revArr);
    revArr = data;
  endfunction
endmodule    
 
    
