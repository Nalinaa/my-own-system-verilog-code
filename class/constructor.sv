/*Create a class Packet with the following properties:

bit [7:0] addr

bit [7:0] data

Write a method to display the packet details.

Create 2 objects and assign different values.*/

class packet;
  bit [7:0] addr;
  bit [7:0] data;
  function new();
    this.addr = 5;
    this.data = 10;
  endfunction
  function void display();
    $display("The add = %d and data = %d",addr,data);
  endfunction
endclass

module top;
  packet pkt = new();
  initial
    begin
      pkt.addr = 6;
      pkt.data = 25;
      pkt.display();
    end
endmodule
