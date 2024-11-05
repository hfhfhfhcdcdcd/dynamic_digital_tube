module dynamic_seg (
    input               rst         ,
    input               clk         ,
    output reg [5:0]    sel         ,
    output reg [7:0]    seg_dig
 );

/*--------------cnt_100ms-------------------*/
 reg [22:0] cnt_100ms;
 parameter time_100ms = 5_000_000;
 always @(posedge clk or negedge rst) begin 
    if (!rst) begin
        cnt_100ms <= 23'd0;
    end
    else if (cnt_100ms == time_100ms - 1) begin
        cnt_100ms <= cnt_100ms + 1'd1;
    end
    else   
        cnt_100ms <= cnt_100ms + 1'b1;
 end
/*--------------cnt_999_999-------------------*/
 reg [19:0] cnt_999_999;
 always @(posedge clk or negedge rst) begin
    if (!rst) begin
        cnt_999_999 <= 20'd0;
    end
    else if (cnt_100ms == time_100ms - 1) begin
        cnt_999_999 <= cnt_999_999 + 1'b1;
    end
    else
        cnt_999_999 <= cnt_999_999;
 end
/*--------------cnt_1ms-------------------*/
 reg [15:0] cnt_1ms;
 always @(posedge clk or negedge rst) begin
    if (!rst) begin
        cnt_1ms <= 16'd0;
    end
    else if (cnt_1ms == 50_000 - 1) begin
        cnt_1ms <= 16'd0;
    end
    else 
        cnt_1ms <= cnt_1ms + 1'b1;

 end
/*--------------sel-------------------*/
 always @(posedge clk or negedge rst) begin
    if (!rst) begin
        sel <= 6'd0;
    end
    else if (cnt_1ms == 50_000 - 1) begin
        sel <= sel << 1'b1;
    end
    else
        sel <= sel;
 end
/*--------------取位-------------------*/
 reg [3:0]seg[5:0];
 always @(posedge clk or negedge rst) begin 
    if (!rst) begin
        seg[0] <= 4'd0;
        seg[1] <= 4'd0;
        seg[2] <= 4'd0;
        seg[3] <= 4'd0;
        seg[4] <= 4'd0;
        seg[5] <= 4'd0;
    end
    else begin
        // 获取个位
        seg[0] = cnt_999_999 % 10;
        // 获取十位
        seg[1] = (cnt_999_999 / 10) % 10;
        // 获取百位
        seg[2] = (cnt_999_999 / 100) % 10;
        // 获取千位
        seg[3] = (cnt_999_999 / 1000) % 10;
        // 获取万位
        seg[4] = (cnt_999_999 / 10000) % 10;
        // 获取十万位
        seg[5] = cnt_999_999 / 100000;
    end
 end
/*--------------显示数字用数码管-------------------*/
 always @(posedge clk or negedge rst) begin 
    if (!rst) begin
        seg_dig <= 8'd0;
    end
    else 
        case (seg[0])
        0:seg_dig <= 8'b1100_0000;
        1:seg_dig <= 8'b1111_1001;
        2:seg_dig <= 8'b1010_0100;
        3:seg_dig <= 8'b1011_0000;
        4:seg_dig <= 8'b1001_1001;
        5:seg_dig <= 8'b1001_0010;
        6:seg_dig <= 8'b1000_0010;
        7:seg_dig <= 8'b1111_1000;
        8:seg_dig <= 8'b1000_0000;
        9:seg_dig <= 8'b1001_0000;
        default: ;
        endcase
        case (seg[1]) 
        0:seg_dig <= 8'b1100_0000;
        1:seg_dig <= 8'b1111_1001;
        2:seg_dig <= 8'b1010_0100;
        3:seg_dig <= 8'b1011_0000;
        4:seg_dig <= 8'b1001_1001;
        5:seg_dig <= 8'b1001_0010;
        6:seg_dig <= 8'b1000_0010;
        7:seg_dig <= 8'b1111_1000;
        8:seg_dig <= 8'b1000_0000;
        9:seg_dig <= 8'b1001_0000;
        default: ;
        endcase
        case (seg[2])
        0:seg_dig <= 8'b1100_0000;
        1:seg_dig <= 8'b1111_1001;
        2:seg_dig <= 8'b1010_0100;
        3:seg_dig <= 8'b1011_0000;
        4:seg_dig <= 8'b1001_1001;
        5:seg_dig <= 8'b1001_0010;
        6:seg_dig <= 8'b1000_0010;
        7:seg_dig <= 8'b1111_1000;
        8:seg_dig <= 8'b1000_0000;
        9:seg_dig <= 8'b1001_0000;
        default: ;
        endcase
        case (seg[3]) 
        0:seg_dig <= 8'b1100_0000;
        1:seg_dig <= 8'b1111_1001;
        2:seg_dig <= 8'b1010_0100;
        3:seg_dig <= 8'b1011_0000;
        4:seg_dig <= 8'b1001_1001;
        5:seg_dig <= 8'b1001_0010;
        6:seg_dig <= 8'b1000_0010;
        7:seg_dig <= 8'b1111_1000;
        8:seg_dig <= 8'b1000_0000;
        9:seg_dig <= 8'b1001_0000;
        default: ;
        endcase
        case (seg[4])
        0:seg_dig <= 8'b1100_0000;
        1:seg_dig <= 8'b1111_1001;
        2:seg_dig <= 8'b1010_0100;
        3:seg_dig <= 8'b1011_0000;
        4:seg_dig <= 8'b1001_1001;
        5:seg_dig <= 8'b1001_0010;
        6:seg_dig <= 8'b1000_0010;
        7:seg_dig <= 8'b1111_1000;
        8:seg_dig <= 8'b1000_0000;
        9:seg_dig <= 8'b1001_0000;
        default: ;
        endcase
        case (seg[5]) 
        0:seg_dig <= 8'b1100_0000;
        1:seg_dig <= 8'b1111_1001;
        2:seg_dig <= 8'b1010_0100;
        3:seg_dig <= 8'b1011_0000;
        4:seg_dig <= 8'b1001_1001;
        5:seg_dig <= 8'b1001_0010;
        6:seg_dig <= 8'b1000_0010;
        7:seg_dig <= 8'b1111_1000;
        8:seg_dig <= 8'b1000_0000;
        9:seg_dig <= 8'b1001_0000;
        default: ;
        endcase
 end

endmodule


 