/*Modify the Packet class to:

Make variables addr and data protected.

Provide get() and set() methods to access them from outside.*/
class packet;
  protected bit [7:0] addr;
  protected bit [7:0] data;
  function set(bit [7:0] addr,bit [7:0] data);
    this.addr = addr;
    this.data = data;
  endfunction
  function bit [7:0] get_addr;
    return addr;
  endfunction
  function bit [7:0] get_data;
    return data;
  endfunction
  function void display();
    $display("The add = %d and data = %d",addr,data);
  endfunction
endclass

module top;
  packet pkt = new();
  initial
    begin
      //pkt.addr = 6;
      //pkt.data = 25;
      pkt.set(6,25);
      pkt.display();
      $display(" The value of addr and data through get method is %d , %d",pkt.get_addr,pkt.get_data);
    end
endmodule
