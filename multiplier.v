module multiplier(x,y,ctrl,clk,product);
input x;
input [3:0] y;
input ctrl;
input clk;
output product;
wire [3:0] r;
wire [3:0] p;
wire [7:0] q;
wire cout1;
wire cout2;
wire coutm;
wire cin1;
wire s1;
wire s2;


and1 n0 (r[0],y[0],ctrl);
and1 n1 (r[1],y[1],ctrl);
and1 n2 (r[2],y[2],ctrl);
and1 n3 (r[3],y[3],ctrl);
dff d0 (x,clk,r[0],p[0]);
dff d1 (x,clk,ctrl,q[0]);
dff d2 (q[0],clk,r[1],p[1]);
dff d3 (x,clk,ctrl,q[1]);
dff d4 (q[1],clk,ctrl,q[2]);
dff d5 (q[2],clk,r[2],p[2]);
dff d6 (x,clk,ctrl,q[3]);
dff d7 (q[3],clk,ctrl,q[4]);
dff d8 (q[4],clk,ctrl,q[5]);
dff d9 (q[5],clk,r[3],p[3]);
dff d10 (cout1,clk,ctrl,q[6]);
dff d11 (cout2,clk,ctrl,q[7]);
dff d12 (coutm,clk,ctrl,cin1);

fulladder fa1 (p[0],p[1],q[6],cout1,s1);
fulladder fa2 (p[2],p[3],q[7],cout2,s2);
fulladder fa3 (s1,s2,cin1,coutm,product);

endmodule

module fulladder (a,b,cin,cout,sum);
input a;
input b;
input cin;
output cout;
output sum;
assign sum = a ^ b ^ cin;
assign cout = (a & b) | (a & cin) | (b & cin);
endmodule


module and1 (c,a,b);
input a,b;
output c;
assign c = a & b;
endmodule

module dff (d,clk,rst,q);
input d,clk,rst;
output q;
reg q;
always @ (posedge clk)
if(~rst)
begin
q <=  1'b0;
end
else
begin
q <= d;
end
endmodule
