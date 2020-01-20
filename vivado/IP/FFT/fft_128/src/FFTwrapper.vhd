library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FFTwrapper is
    generic(
        NFFT : integer := 128      --shoud be consistent with IP (Xilinx FFT IP)   ���̒l��ύX����Ƃ��́CFFT�̐ݒ���ς���K�v������ 

    );
    port(
    aclk : IN STD_LOGIC;
    
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_config_tvalid : IN STD_LOGIC;
    s_axis_config_tready : OUT STD_LOGIC;
    
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);	  --���̓f�[�^(AXIstream)�C16bit�f�[�^x2 �i�����C�����j 
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tlast : IN STD_LOGIC;
        
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);	  --�o�̓f�[�^(AXIstream)�C16bit�f�[�^x2 �i�����C�����j 
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tlast : OUT STD_LOGIC;
    
    fft_data_start : out std_logic;		 --FFT�f�[�^�̑��M�J�n����1�N���b�N�����A�T�[�g�����M�� 

    
    event_frame_started : OUT STD_LOGIC;
    event_tlast_unexpected : OUT STD_LOGIC;
    event_tlast_missing : OUT STD_LOGIC;
    event_status_channel_halt : OUT STD_LOGIC;
    event_data_in_channel_halt : OUT STD_LOGIC;
    event_data_out_channel_halt : OUT STD_LOGIC
            
    );
end FFTwrapper;

architecture Behavioral of FFTwrapper is
    component xfft_0 IS
      PORT (
        aclk : IN STD_LOGIC;
        s_axis_config_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
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

    signal data_counter : integer;

    signal fft_data_tvalid : std_logic;
    signal fft_data_tready : std_logic;
    signal fft_data_tlast : std_logic;

    signal fft_frame_start : std_logic;
    signal fft_frame_start_ff : std_logic;
    signal fft_frame_start_pulse :std_logic;
begin

    PROC_DAT_COUNT:process(aclk)		 --���f�[�^���o�͂������J�E���g���� 
    begin
        if(aclk'event and aclk='1')then
            
            if(fft_data_tvalid='1' and fft_data_tready='1') then   --�L���ȃf�[�^���o�͂���邽�тɁC�J�E���g�A�b�v���� 
                if(fft_data_tlast = '1')then		 --�Ō�̃f�[�^�𑗐M�����������C1�ɖ߂� 
                    data_counter <= 1;
                else
                    data_counter <= data_counter + 1;
                end if;
            end if;
        end if;
    end process;


    fft_frame_start <= fft_data_tvalid when data_counter=1 else  '0';		 --�ŏ��̃f�[�^���o�͂���Ƃ��ɂ́C fft_frame_start���A�T�[�g���� 

    process(aclk)
    begin
        if(aclk'event and aclk='1')then			 --fft_frame_start�M�����p���X�ɂ��� 
            fft_frame_start_ff <= fft_frame_start;
        end if;
    end process;
    fft_frame_start_pulse <= fft_frame_start and (not fft_frame_start_ff);

    
    fft_data_start <= fft_frame_start_pulse;

    m_axis_data_tvalid <= fft_data_tvalid;
    fft_data_tready <= m_axis_data_tready;
    m_axis_data_tlast <= fft_data_tlast;


    FFTinst : xfft_0
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



end Behavioral;