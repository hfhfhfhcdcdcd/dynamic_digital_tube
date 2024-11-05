module top (
input             clk            ,   
input             rst            ,
output            stcp           ,
output            shcp           ,
output            DS             ,
output            OE             
);
/*=======dynamic_seg=========������оƬ�ṩ�������ݵ�ģ��=========================*/
wire [5:0] sel;
wire [7:0] seg_dig;
seg_static seg_static1(
    .rst(rst)         ,
    .clk(clk)         ,
    .sel(sel)         ,
    .seg_dig(seg_dig)
);
/*======HC595_ctrl=============��оƬд������ģ��======================*/
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