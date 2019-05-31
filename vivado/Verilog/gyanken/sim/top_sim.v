`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/31 16:18:23
// Design Name: 
// Module Name: top_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module top_sim();

    reg d_in_;              //じゃんけん選択する信号
    reg gtp_;               //グーチョキパー入力する信号
    reg pon;                //じゃんけんぽん！
    wire [`L_DataBus] led_;   //表示用7segLED
    
    
    top top1 (d_in_,gtp_,pon,led_);
    
    
    initial begin
        d_in_ <= 1'b1;
        gtp_  <= 1'b1;
        pon   <= 1'b0;
        
    #20
        gtp_ <= 1'b0;
    
    #20
        gtp_ <= 1'b1;       //初期化
                
    /********************************/
        
    #20
        d_in_ <= 1'b0;      //グー
    
    #20
        d_in_ <= 1'b1; 

    #20
        d_in_ <= 1'b0;      //チョキ
    
    #20
        d_in_ <= 1'b1; 
        
    #20
        d_in_ <= 1'b0;      //パー
        
    #20
        d_in_ <= 1'b1; 

    #20
        d_in_ <= 1'b0;      //グー
        
    #20
        d_in_ <= 1'b1; 
        
    /*************************/
    
    #20
        gtp_ <= 1'b0;       //グーを代入
        
    #20
        gtp_ <= 1'b1;       //グーを代入
                    
        
    /*************************/
        
        
    #20
        d_in_ <= 1'b0;      //グー
        
    #20
        d_in_ <= 1'b1; 
    
    #20
        d_in_ <= 1'b0;      //チョキ
        
    #20
        d_in_ <= 1'b1; 
        
    /*************************/
    
    #20
        gtp_ <= 1'b0;       //チョキを代入
    
    #20
        gtp_ <= 1'b1;       //チョキを代入
                
        
    /**************************/
    
    #20
        d_in_ <= 1'b0;      //グー
    
    #20
        d_in_ <= 1'b1; 

    #20
        d_in_ <= 1'b0;      //チョキ
    
    #20
        d_in_ <= 1'b1; 
        
    #20
        d_in_ <= 1'b0;      //パー
        
    #20
        d_in_ <= 1'b1; 

    /*************************/
    
    #20
        gtp_ <= 1'b0;       //パーを代入
  
    #20
        gtp_ <= 1'b1;       //パーを代入
                    
    /*************************/
    
    #20
        pon <= 1'b1;        //じゃんけんぽん！
    
    /************************/
    
    #20
        $finish;
    end
    
        
    

endmodule
