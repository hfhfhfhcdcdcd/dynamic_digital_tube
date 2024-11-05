module top (
input             clk            ,   
input             rst            ,
output            stcp           ,
output            shcp           ,
output            DS             ,
output            OE             
);
/*=======dynamic_seg=========给驱动芯片提供并行数据的模块=========================*/
wire [5:0] sel;
wire [7:0] seg_dig;
seg_static seg_static1(
    .rst(rst)         ,
    .clk(clk)         ,
    .sel(sel)         ,
    .seg_dig(seg_dig)
);
/*======HC595_ctrl=============给芯片写驱动的模块======================*/
HC595_ctrl HC595_ctrl1(
    .rst (rst )      ,
    .clk (clk )      ,
    .sel (sel )      ,
    .seg (seg_dig )  ,

    .stcp(stcp)      ,
    .shcp(shcp)      ,
    .DS  (DS  )      ,
    .OE  (OE  )
);
endmodule