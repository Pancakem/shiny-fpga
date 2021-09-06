library ieee;
use ieee.std_logic_1164.all;


entity stopwFSM is 
  port ( clk, resetB, stopB, startB, lapB: in std_logic;
        resB, count, disp : out std_logic); 
    end;

architecture synth of stopwFSM is 
    type state_type is (S0, S1, S2, S3);
    signal state, nstate : state_type;
    
    begin 
      process(clk) 
        begin
        if RISING_EDGE(clk) then             
            state <= nstate;
        end if;   
    end process; 
  process(state, resetB, stopB, startB, lapB) 
        begin     
        case state is
        when S0 => 
                    if resetB = '0' then nstate <= S0;   
                    elsif stopB = '0' then nstate <= S0;            
                    elsif startB = '0' then nstate <= S2;               
                    elsif lapB = '0' then nstate <= S2;             
                    else nstate <= state;                  
                    end if; 
        when S1 => if resetB = '0' then nstate <= S0;        
                    elsif stopB = '0' then nstate <= S1;           
                    elsif startB = '0' then nstate <= S2;            
                    elsif lapB = '0' then nstate <= S1;           
                    else nstate <= state;
                    end if; 
        when S2 => if resetB = '0' then nstate <= S0;       
                    elsif stopB = '0' then nstate <= S1;              
                    elsif startB = '0' then nstate <= S2;             
                    elsif lapB = '0' then nstate <= S3;             
                    else nstate <= state;
                    end if; 
        when S3 => if    resetB = '0' then nstate <= S0;
                    elsif stopB = '0' then nstate <= S1;  
                    elsif startB = '0' then nstate <= S2;
                    elsif lapB = '0' then nstate <= S3;
                    else nstate <= state;
                    end if;     
    end case; 
   end process;
        
        resB  <= '0' when state = S0 else
                 '1' when state = S1 else
                 '1' when state = S2 else
                 '1';
        count <= '0' when state = S0 else
                 '0' when state = S1 else
                 '1' when state = S2 else
                 '1';  
        disp  <= '0' when state = S0 else
                 '1' when state = S1 else
                 '1' when state = S2 else
                 '0';  
end; 
