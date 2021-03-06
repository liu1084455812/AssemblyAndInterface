`timescale 1ns / 1ps

module PCAddr(input [25:0] in_addr,
              input [31:0] PC0,
				  output reg [31:0] addr);
    wire [27:0] mid;
	 assign mid = in_addr << 2;
    always @(in_addr) begin
        addr <= {PC0[31:28], mid[27:0]};
    end

endmodule