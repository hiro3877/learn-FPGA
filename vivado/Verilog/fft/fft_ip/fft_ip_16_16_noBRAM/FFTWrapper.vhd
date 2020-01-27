library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FFTwrapper is
    generic(
        NFFT : integer := 16      --shoud be consistent with IP (Xilinx FFT IP)   この値を変更するときは，FFTの設定も変える必要がある 

    );
    port(
    aclk : IN STD_LOGIC;
    
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_config_tvalid : IN STD_LOGIC;
    s_axis_config_tready : OUT STD_LOGIC;
    
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);	  --入力データ(AXIstream)，16bitデータx2 （実部，虚部） 
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tlast : IN STD_LOGIC;
        
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);	  --出力データ(AXIstream)，16bitデータx2 （実部，虚部） 
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tlast : OUT STD_LOGIC;
    
    fft_data_start : out std_logic;		 --FFTデータの送信開始時に1クロックだけアサートされる信号 

    
    event_frame_started : OUT STD_LOGIC;
    event_tlast_unexpected : OUT STD_LOGIC;
    event_tlast_missing : OUT STD_LOGIC;
    event_status_channel_halt : OUT STD_LOGIC;
    event_data_in_channel_halt : OUT STD_LOGIC;
    event_data_out_channel_halt : OUT STD_LOGIC;
    
    add_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
            
    );
end FFTwrapper;

architecture Behavioral of FFTwrapper is
    component xfft_0 IS
      PORT (
        aclk : IN STD_LOGIC;
        s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        s_axis_config_tvalid : IN STD_LOGIC;
        s_axis_config_tready : OUT STD_LOGIC;
        s_axis_data_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axis_data_tvalid : IN STD_LOGIC;
        s_axis_data_tready : OUT STD_LOGIC;
        s_axis_data_tlast : IN STD_LOGIC;
        m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        m_axis_data_tvalid : OUT STD_LOGIC;
        m_axis_data_tready : IN STD_LOGIC;
        m_axis_data_tlast : OUT STD_LOGIC;
        event_frame_started : OUT STD_LOGIC;
        event_tlast_unexpected : OUT STD_LOGIC;
        event_tlast_missing : OUT STD_LOGIC;
        event_status_channel_halt : OUT STD_LOGIC;
        event_data_in_channel_halt : OUT STD_LOGIC;
        event_data_out_channel_halt : OUT STD_LOGIC
      );
    END component xfft_0;
    
    signal add_data_buf : std_logic_vector(31 downto 0);

    signal data_counter : integer;

    signal fft_data_tvalid : std_logic;
    signal fft_data_tready : std_logic;
    signal fft_data_tlast : std_logic;

    signal fft_frame_start : std_logic;
    signal fft_frame_start_ff : std_logic;
    signal fft_frame_start_pulse :std_logic;
    
    
    signal s_axis_config_tready2 : std_logic;
    signal s_axis_data_tready2 : std_logic;
    signal m_axis_data_tdata2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started2 : STD_LOGIC;
    signal event_tlast_unexpected2 : STD_LOGIC;
    signal event_tlast_missing2 : STD_LOGIC;
    signal event_status_channel_halt2 : STD_LOGIC;
    signal event_data_in_channel_halt2 : STD_LOGIC;
    signal event_data_out_channel_halt2 : STD_LOGIC;
    
    signal s_axis_config_tready3 : std_logic;
    signal s_axis_data_tready3 : std_logic;
    signal m_axis_data_tdata3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started3 : STD_LOGIC;
    signal event_tlast_unexpected3 : STD_LOGIC;
    signal event_tlast_missing3 : STD_LOGIC;
    signal event_status_channel_halt3 : STD_LOGIC;
    signal event_data_in_channel_halt3 : STD_LOGIC;
    signal event_data_out_channel_halt3 : STD_LOGIC;
    
    signal s_axis_config_tready4 : std_logic;
    signal s_axis_data_tready4 : std_logic;
    signal m_axis_data_tdata4 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started4 : STD_LOGIC;
    signal event_tlast_unexpected4 : STD_LOGIC;
    signal event_tlast_missing4 : STD_LOGIC;
    signal event_status_channel_halt4 : STD_LOGIC;
    signal event_data_in_channel_halt4 : STD_LOGIC;
    signal event_data_out_channel_halt4 : STD_LOGIC;
    
    signal s_axis_config_tready5 : std_logic;
    signal s_axis_data_tready5 : std_logic;
    signal m_axis_data_tdata5 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started5 : STD_LOGIC;
    signal event_tlast_unexpected5 : STD_LOGIC;
    signal event_tlast_missing5 : STD_LOGIC;
    signal event_status_channel_halt5 : STD_LOGIC;
    signal event_data_in_channel_halt5 : STD_LOGIC;
    signal event_data_out_channel_halt5 : STD_LOGIC;
    
    signal s_axis_config_tready6 : std_logic;
    signal s_axis_data_tready6 : std_logic;
    signal m_axis_data_tdata6 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started6 : STD_LOGIC;
    signal event_tlast_unexpected6 : STD_LOGIC;
    signal event_tlast_missing6 : STD_LOGIC;
    signal event_status_channel_halt6 : STD_LOGIC;
    signal event_data_in_channel_halt6 : STD_LOGIC;
    signal event_data_out_channel_halt6 : STD_LOGIC;
    
    signal s_axis_config_tready7 : std_logic;
    signal s_axis_data_tready7 : std_logic;
    signal m_axis_data_tdata7 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started7 : STD_LOGIC;
    signal event_tlast_unexpected7 : STD_LOGIC;
    signal event_tlast_missing7 : STD_LOGIC;
    signal event_status_channel_halt7 : STD_LOGIC;
    signal event_data_in_channel_halt7 : STD_LOGIC;
    signal event_data_out_channel_halt7 : STD_LOGIC;
    
    signal s_axis_config_tready8 : std_logic;
    signal s_axis_data_tready8 : std_logic;
    signal m_axis_data_tdata8 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started8 : STD_LOGIC;
    signal event_tlast_unexpected8 : STD_LOGIC;
    signal event_tlast_missing8 : STD_LOGIC;
    signal event_status_channel_halt8 : STD_LOGIC;
    signal event_data_in_channel_halt8 : STD_LOGIC;
    signal event_data_out_channel_halt8 : STD_LOGIC;
    
    signal s_axis_config_tready9 : std_logic;
    signal s_axis_data_tready9 : std_logic;
    signal m_axis_data_tdata9 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started9 : STD_LOGIC;
    signal event_tlast_unexpected9 : STD_LOGIC;
    signal event_tlast_missing9 : STD_LOGIC;
    signal event_status_channel_halt9 : STD_LOGIC;
    signal event_data_in_channel_halt9 : STD_LOGIC;
    signal event_data_out_channel_halt9 : STD_LOGIC;
    
    signal s_axis_config_tready10 : std_logic;
    signal s_axis_data_tready10 : std_logic;
    signal m_axis_data_tdata10 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started10 : STD_LOGIC;
    signal event_tlast_unexpected10 : STD_LOGIC;
    signal event_tlast_missing10 : STD_LOGIC;
    signal event_status_channel_halt10 : STD_LOGIC;
    signal event_data_in_channel_halt10 : STD_LOGIC;
    signal event_data_out_channel_halt10 : STD_LOGIC;
    
    signal s_axis_config_tready11 : std_logic;
    signal s_axis_data_tready11 : std_logic;
    signal m_axis_data_tdata11 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started11 : STD_LOGIC;
    signal event_tlast_unexpected11 : STD_LOGIC;
    signal event_tlast_missing11 : STD_LOGIC;
    signal event_status_channel_halt11 : STD_LOGIC;
    signal event_data_in_channel_halt11 : STD_LOGIC;
    signal event_data_out_channel_halt11 : STD_LOGIC;
    
    signal s_axis_config_tready12 : std_logic;
    signal s_axis_data_tready12 : std_logic;
    signal m_axis_data_tdata12 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started12 : STD_LOGIC;
    signal event_tlast_unexpected12 : STD_LOGIC;
    signal event_tlast_missing12 : STD_LOGIC;
    signal event_status_channel_halt12 : STD_LOGIC;
    signal event_data_in_channel_halt12 : STD_LOGIC;
    signal event_data_out_channel_halt12 : STD_LOGIC;
    
    signal s_axis_config_tready13 : std_logic;
    signal s_axis_data_tready13 : std_logic;
    signal m_axis_data_tdata13 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started13 : STD_LOGIC;
    signal event_tlast_unexpected13 : STD_LOGIC;
    signal event_tlast_missing13 : STD_LOGIC;
    signal event_status_channel_halt13 : STD_LOGIC;
    signal event_data_in_channel_halt13 : STD_LOGIC;
    signal event_data_out_channel_halt13 : STD_LOGIC;
    
    signal s_axis_config_tready14 : std_logic;
    signal s_axis_data_tready14 : std_logic;
    signal m_axis_data_tdata14 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started14 : STD_LOGIC;
    signal event_tlast_unexpected14 : STD_LOGIC;
    signal event_tlast_missing14 : STD_LOGIC;
    signal event_status_channel_halt14 : STD_LOGIC;
    signal event_data_in_channel_halt14 : STD_LOGIC;
    signal event_data_out_channel_halt14 : STD_LOGIC;
    
    signal s_axis_config_tready15 : std_logic;
    signal s_axis_data_tready15 : std_logic;
    signal m_axis_data_tdata15 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started15 : STD_LOGIC;
    signal event_tlast_unexpected15 : STD_LOGIC;
    signal event_tlast_missing15 : STD_LOGIC;
    signal event_status_channel_halt15 : STD_LOGIC;
    signal event_data_in_channel_halt15 : STD_LOGIC;
    signal event_data_out_channel_halt15 : STD_LOGIC;
    
    signal s_axis_config_tready16 : std_logic;
    signal s_axis_data_tready16 : std_logic;
    signal m_axis_data_tdata16 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal event_frame_started16 : STD_LOGIC;
    signal event_tlast_unexpected16 : STD_LOGIC;
    signal event_tlast_missing16 : STD_LOGIC;
    signal event_status_channel_halt16 : STD_LOGIC;
    signal event_data_in_channel_halt16 : STD_LOGIC;
    signal event_data_out_channel_halt16 : STD_LOGIC;


begin

    PROC_DAT_COUNT:process(aclk)		 --何個データを出力したかカウントする 
    begin
        if(aclk'event and aclk='1')then
            
            if(fft_data_tvalid='1' and fft_data_tready='1') then   --有効なデータが出力されるたびに，カウントアップする 
                if(fft_data_tlast = '1')then		 --最後のデータを送信しおわったら，1に戻す 
                    data_counter <= 1;
                else
                    data_counter <= data_counter + 1;
                end if;
            end if;
        end if;
    end process;


    fft_frame_start <= fft_data_tvalid when data_counter=1 else  '0';		 --最初のデータを出力するときには， fft_frame_startをアサートする 

    process(aclk)
    begin
        if(aclk'event and aclk='1')then			 --fft_frame_start信号をパルスにする 
            fft_frame_start_ff <= fft_frame_start;
        end if;
    end process;
    fft_frame_start_pulse <= fft_frame_start and (not fft_frame_start_ff);

    
    fft_data_start <= fft_frame_start_pulse;

    m_axis_data_tvalid <= fft_data_tvalid;
    fft_data_tready <= m_axis_data_tready;
    m_axis_data_tlast <= fft_data_tlast;


    FFT1 : xfft_0
    port map(
        aclk => aclk,
        s_axis_config_tdata => s_axis_config_tdata,
        s_axis_config_tvalid  => s_axis_config_tvalid,
        s_axis_config_tready => s_axis_config_tready,
        s_axis_data_tdata => s_axis_data_tdata,
        s_axis_data_tvalid  => s_axis_data_tvalid,
        s_axis_data_tready => s_axis_data_tready,
        s_axis_data_tlast => s_axis_data_tlast,
        m_axis_data_tdata => m_axis_data_tdata,
        m_axis_data_tvalid => fft_data_tvalid,
        m_axis_data_tready => fft_data_tready,
        m_axis_data_tlast => fft_data_tlast,
        event_frame_started => event_frame_started,
        event_tlast_unexpected => event_tlast_unexpected,
        event_tlast_missing => event_tlast_missing,
        event_status_channel_halt => event_status_channel_halt,
        event_data_in_channel_halt => event_data_in_channel_halt,
        event_data_out_channel_halt => event_data_out_channel_halt   
    );
    
    FFT2 : xfft_0
    port map(
        aclk => aclk,
        s_axis_config_tdata => s_axis_config_tdata,
        s_axis_config_tvalid  => s_axis_config_tvalid,
        s_axis_config_tready => s_axis_config_tready2,
        s_axis_data_tdata => s_axis_data_tdata,
        s_axis_data_tvalid  => s_axis_data_tvalid,
        s_axis_data_tready => s_axis_data_tready2,
        s_axis_data_tlast => s_axis_data_tlast,
        m_axis_data_tdata => m_axis_data_tdata2,
        m_axis_data_tvalid => open,
        m_axis_data_tready => fft_data_tready,
        m_axis_data_tlast => open,
        event_frame_started => event_frame_started2,
        event_tlast_unexpected => event_tlast_unexpected2,
        event_tlast_missing => event_tlast_missing2,
        event_status_channel_halt => event_status_channel_halt2,
        event_data_in_channel_halt => event_data_in_channel_halt2,
        event_data_out_channel_halt => event_data_out_channel_halt2   
    );    
    
    FFT3 : xfft_0
    port map(
        aclk => aclk,
        s_axis_config_tdata => s_axis_config_tdata,
        s_axis_config_tvalid  => s_axis_config_tvalid,
        s_axis_config_tready => s_axis_config_tready3,
        s_axis_data_tdata => s_axis_data_tdata,
        s_axis_data_tvalid  => s_axis_data_tvalid,
        s_axis_data_tready => s_axis_data_tready3,
        s_axis_data_tlast => s_axis_data_tlast,
        m_axis_data_tdata => m_axis_data_tdata3,
        m_axis_data_tvalid => open,
        m_axis_data_tready => fft_data_tready,
        m_axis_data_tlast => open,
        event_frame_started => event_frame_started3,
        event_tlast_unexpected => event_tlast_unexpected3,
        event_tlast_missing => event_tlast_missing3,
        event_status_channel_halt => event_status_channel_halt3,
        event_data_in_channel_halt => event_data_in_channel_halt3,
        event_data_out_channel_halt => event_data_out_channel_halt3   
    );
    
FFT4 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready4,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready4,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata4,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started4,
    event_tlast_unexpected => event_tlast_unexpected4,
    event_tlast_missing => event_tlast_missing4,
    event_status_channel_halt => event_status_channel_halt4,
    event_data_in_channel_halt => event_data_in_channel_halt4,
    event_data_out_channel_halt => event_data_out_channel_halt4
    );
    
    FFT5 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready5,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready5,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata5,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started5,
    event_tlast_unexpected => event_tlast_unexpected5,
    event_tlast_missing => event_tlast_missing5,
    event_status_channel_halt => event_status_channel_halt5,
    event_data_in_channel_halt => event_data_in_channel_halt5,
    event_data_out_channel_halt => event_data_out_channel_halt5
    );
    
    FFT6 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready6,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready6,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata6,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started6,
    event_tlast_unexpected => event_tlast_unexpected6,
    event_tlast_missing => event_tlast_missing6,
    event_status_channel_halt => event_status_channel_halt6,
    event_data_in_channel_halt => event_data_in_channel_halt6,
    event_data_out_channel_halt => event_data_out_channel_halt6
    );
    
    FFT7 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready7,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready7,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata7,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started7,
    event_tlast_unexpected => event_tlast_unexpected7,
    event_tlast_missing => event_tlast_missing7,
    event_status_channel_halt => event_status_channel_halt7,
    event_data_in_channel_halt => event_data_in_channel_halt7,
    event_data_out_channel_halt => event_data_out_channel_halt7
    );
    
    FFT8 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready8,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready8,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata8,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started8,
    event_tlast_unexpected => event_tlast_unexpected8,
    event_tlast_missing => event_tlast_missing8,
    event_status_channel_halt => event_status_channel_halt8,
    event_data_in_channel_halt => event_data_in_channel_halt8,
    event_data_out_channel_halt => event_data_out_channel_halt8
    );
    
    FFT9 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready9,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready9,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata9,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started9,
    event_tlast_unexpected => event_tlast_unexpected9,
    event_tlast_missing => event_tlast_missing9,
    event_status_channel_halt => event_status_channel_halt9,
    event_data_in_channel_halt => event_data_in_channel_halt9,
    event_data_out_channel_halt => event_data_out_channel_halt9
    );
    
    FFT10 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready10,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready10,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata10,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started10,
    event_tlast_unexpected => event_tlast_unexpected10,
    event_tlast_missing => event_tlast_missing10,
    event_status_channel_halt => event_status_channel_halt10,
    event_data_in_channel_halt => event_data_in_channel_halt10,
    event_data_out_channel_halt => event_data_out_channel_halt10
    );
    
    FFT11 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready11,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready11,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata11,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started11,
    event_tlast_unexpected => event_tlast_unexpected11,
    event_tlast_missing => event_tlast_missing11,
    event_status_channel_halt => event_status_channel_halt11,
    event_data_in_channel_halt => event_data_in_channel_halt11,
    event_data_out_channel_halt => event_data_out_channel_halt11
    );
    
    FFT12 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready12,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready12,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata12,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started12,
    event_tlast_unexpected => event_tlast_unexpected12,
    event_tlast_missing => event_tlast_missing12,
    event_status_channel_halt => event_status_channel_halt12,
    event_data_in_channel_halt => event_data_in_channel_halt12,
    event_data_out_channel_halt => event_data_out_channel_halt12
    );
    
    FFT13 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready13,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready13,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata13,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started13,
    event_tlast_unexpected => event_tlast_unexpected13,
    event_tlast_missing => event_tlast_missing13,
    event_status_channel_halt => event_status_channel_halt13,
    event_data_in_channel_halt => event_data_in_channel_halt13,
    event_data_out_channel_halt => event_data_out_channel_halt13
    );
    
    FFT14 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready14,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready14,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata14,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started14,
    event_tlast_unexpected => event_tlast_unexpected14,
    event_tlast_missing => event_tlast_missing14,
    event_status_channel_halt => event_status_channel_halt14,
    event_data_in_channel_halt => event_data_in_channel_halt14,
    event_data_out_channel_halt => event_data_out_channel_halt14
    );
    
    FFT15 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready15,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready15,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata15,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started15,
    event_tlast_unexpected => event_tlast_unexpected15,
    event_tlast_missing => event_tlast_missing15,
    event_status_channel_halt => event_status_channel_halt15,
    event_data_in_channel_halt => event_data_in_channel_halt15,
    event_data_out_channel_halt => event_data_out_channel_halt15
    );
    
    FFT16 : xfft_0
    port map(
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid  => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready16,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid  => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready16,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata16,
    m_axis_data_tvalid => open,
    m_axis_data_tready => fft_data_tready,
    m_axis_data_tlast => open,
    event_frame_started => event_frame_started16,
    event_tlast_unexpected => event_tlast_unexpected16,
    event_tlast_missing => event_tlast_missing16,
    event_status_channel_halt => event_status_channel_halt16,
    event_data_in_channel_halt => event_data_in_channel_halt16,
    event_data_out_channel_halt => event_data_out_channel_halt16
    );
    

    add_data_buf <= m_axis_data_tdata2 and m_axis_data_tdata3 and m_axis_data_tdata4 and m_axis_data_tdata5 and m_axis_data_tdata6 and m_axis_data_tdata7 and m_axis_data_tdata8 and m_axis_data_tdata9 and m_axis_data_tdata10 and m_axis_data_tdata11 and m_axis_data_tdata12 and m_axis_data_tdata13 and m_axis_data_tdata14 and m_axis_data_tdata15 and m_axis_data_tdata16;
    
    add_data <= add_data_buf;

end Behavioral;