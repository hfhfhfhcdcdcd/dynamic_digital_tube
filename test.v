case (seg0)//seg0
      4'd0: begin
        // 对 seg0 为 0 时的操作
		seg_dig < = 8'b1100_0000;
      end
      4'd1: begin
        // 对 seg0 为 1 时的操作
		seg_dig < = 8'b1111_1001;
      end
      4'd2: begin
        // 对 seg0 为 2 时的操作
		seg_dig < = 8'b1010_0100;
      end   
	  4'd3: begin
	   // 对 seg0 为 3时的操作
	   seg_dig < = 8'b1011_0000;
	   end
	  4'd4: begin
	   // 对 seg0 为 4时的操作
	   seg_dig < = 8'b1001_1001;
	  end
	  4'd5: begin
	   // 对 seg0 为 5 时的操作
	   seg_dig < = 8'b1111_0010;
	  end
	  4'd6: begin
	   // 对 seg0 为 6 时的操作
	   seg_dig < = 8'b1000_0010;
	  end
	  4'd7: begin
	   // 对 seg0 为 7 时的操作
	   seg_dig < = 8'b1111_1000;
	  end
	  4'd8: begin
	   // 对 seg0 为 8 时的操作
	   seg_dig < = 8'b1000_0000;
	  end
      4'd9: begin
       // 对 seg0 为 9 时的操作
       seg_dig <=8'b1001_0000;
      end
    endcase