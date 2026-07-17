`timescale 1ns/1ps

module ahb_tb;

reg HCLK;
reg HRESETn;

wire [31:0] HADDR;
wire [31:0] HWDATA;
wire HWRITE;
wire [1:0] HTRANS;
wire [31:0] HRDATA;
wire HREADY;
wire [1:0] HRESP;

ahb_master master(
.HCLK(HCLK),
.HRESETn(HRESETn),
.HADDR(HADDR),
.HWDATA(HWDATA),
.HWRITE(HWRITE),
.HTRANS(HTRANS),
.HRDATA(HRDATA)
);

ahb_slave slave(
.HCLK(HCLK),
.HRESETn(HRESETn),
.HADDR(HADDR),
.HWDATA(HWDATA),
.HWRITE(HWRITE),
.HTRANS(HTRANS),
.HRDATA(HRDATA),
.HREADY(HREADY),
.HRESP(HRESP)
);

always #5 HCLK = ~HCLK;

initial
begin
    HCLK = 0;
    HRESETn = 0;

    #20;
    HRESETn = 1;

    #100;

    $display("Read Data = %h",HRDATA);

    $finish;
end

endmodule
