case (seg0)//seg0
      4'd0: begin
        // �� seg0 Ϊ 0 ʱ�Ĳ���
		seg_dig < = 8'b1100_0000;
      end
      4'd1: begin
        // �� seg0 Ϊ 1 ʱ�Ĳ���
		seg_dig < = 8'b1111_1001;
      end
      4'd2: begin
        // �� seg0 Ϊ 2 ʱ�Ĳ���
		seg_dig < = 8'b1010_0100;
      end   
	  4'd3: begin
	   // �� seg0 Ϊ 3ʱ�Ĳ���
	   seg_dig < = 8'b1011_0000;
	   end
	  4'd4: begin
	   // �� seg0 Ϊ 4ʱ�Ĳ���
	   seg_dig < = 8'b1001_1001;
	  end
	  4'd5: begin
	   // �� seg0 Ϊ 5 ʱ�Ĳ���
	   seg_dig < = 8'b1111_0010;
	  end
	  4'd6: begin
	   // �� seg0 Ϊ 6 ʱ�Ĳ���
	   seg_dig < = 8'b1000_0010;
	  end
	  4'd7: begin
	   // �� seg0 Ϊ 7 ʱ�Ĳ���
	   seg_dig < = 8'b1111_1000;
	  end
	  4'd8: begin
	   // �� seg0 Ϊ 8 ʱ�Ĳ���
	   seg_dig < = 8'b1000_0000;
	  end
      4'd9: begin
       // �� seg0 Ϊ 9 ʱ�Ĳ���
       seg_dig <=8'b1001_0000;
      end
    endcase