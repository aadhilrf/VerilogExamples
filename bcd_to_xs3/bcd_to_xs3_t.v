module bcd_to_xs3_t;
wire [3:0]x;
reg [3:0]b;
initial
 begin
 $dumpfile("wave.vcd");
 $dumpvars();    
 end
bcd_to_xs3 h(b,x);
 initial 
        begin 
         #0
         b[3]=0;b[2]=0;b[1]=0;b[0]=0;
         #5 
         b[3]=0;b[2]=0;b[1]=0;b[0]=1;
         #10 
         b[3]=0;b[2]=0;b[1]=1;b[0]=0;
         #15 
         b[3]=0;b[2]=0;b[1]=1;b[0]=1;
		 #20
		 b[3]=0;b[2]=1;b[1]=0;b[0]=0;
		 #25
		 b[3]=0;b[2]=1;b[1]=0;b[0]=1;
		 #30
		 b[3]=0;b[2]=1;b[1]=1;b[0]=0;
		 #35
		 b[3]=0;b[2]=1;b[1]=1;b[0]=1;
		 #40
		 b[3]=1;b[2]=0;b[1]=0;b[0]=0;
		 #45
		 b[3]=1;b[2]=0;b[1]=0;b[0]=1;
		 #50
		 b[3]=0;b[2]=0;b[1]=0;b[0]=0;
        end 
endmodule
