/*Create a base class Transaction with fields:

bit [3:0] id

Derive a class WriteTransaction and add:

bit [7:0] wr_data

Derive another class ReadTransaction and add:

bit [7:0] rd_data

Use constructors to initialize fields*/
class transaction;
  bit [3:0] id;
  function new(bit [3:0
endclass
