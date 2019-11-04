// Code your design here
class magicsquare;
 
  rand bit [7:0] a [0:2][0:2];
  
 
  
 
  constraint c {
  a.sum() with (item.index(1)==0 ? item : 0) == 15;//row0
  a.sum() with (item.index(1)==1 ? item : 0) == 15;//row1
  a.sum() with (item.index(1)==2 ? item : 0) == 15;//row2
  a.sum() with (item.index(2)==0 ? item : 0) == 15;//col0
  a.sum() with (item.index(2)==1 ? item : 0) == 15;//col1
  a.sum() with (item.index(2)==2 ? item : 0) == 15;//col2
  a.sum() with (item.index(1) == item.index(2) ? item : 0) == 15; //diag1
  a.sum() with ((item.index(1) + item.index(2) == 2) ? item : 0) == 15; //diag2
}
  
  function void display ();
                 $display ("The value of array is %p",a);
 
  endfunction
 
endclass
 
module test;
  magicsquare m1;
 
 
  initial begin
    m1=new();
    m1.randomize();
    m1.display();
 
  end
 
endmodule