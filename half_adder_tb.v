
module half_adder_tb();
reg a,b;
wire sum, carry;
integer i;
half_adder DUT(.a(a),
.b(b),
.sum(sum),
.carry(carry));
initial
   begin
   a = 1'b0;
   b = 1'b0;
   end
   initial
   begin
   for(i=0;i<4;i= i+1)
   begin
   {a,b} = i;
   #10;
   end
   end
   initial 
   #100 $finish;
   $monitor("values of a = %b, b = %b, sum = %b, carry = %b" , a,b,sum,carry);
   