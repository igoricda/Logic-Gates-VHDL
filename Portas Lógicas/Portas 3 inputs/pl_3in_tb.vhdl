entity pl_3in_tb is
end entity;

architecture testbench of pl_3in_tb is
    component pl_or_3in is
        port(
            A: in bit;
            B: in bit;
            C: in bit;
            S: out bit
        );
        end component;
        
    component pl_and_3in is
        port(
            A: in bit;
            B: in bit;
            C: in bit;
            S: out bit
        );
        end component;
    
    signal sA, sB, sC, sOR, sAND: bit;
 
begin
    
    u_pl_or_3in : pl_or_3in port map(sA, sB, sC, sOR);
    
    u_pl_and_3in : pl_and_3in port map(sA, sB, sC, sAND);
    
    u_tb : process
        begin
            sA <= '0';
            sB <= '0';
            sC <= '0';
            wait for 10 ns;
            
            sA <= '0';
            sB <= '0';
            sC <= '1';
            wait for 10 ns;
            
            sA <= '0';
            sB <= '1';
            sC <= '0';
            wait for 10 ns;
            
            sA <= '0';
            sB <= '1';
            sC <= '1';
            wait for 10 ns;
            
            sA <= '1';
            sB <= '0';
            sC <= '0';
            wait for 10 ns;
            
            sA <= '1';
            sB <= '0';
            sC <= '1';
            wait for 10 ns;
            
            sA <= '1';
            sB <= '1';
            sC <= '0';
            wait for 10 ns;
            
            sA <= '1';
            sB <= '1';
            sC <= '1';
            wait for 10 ns;
           
            wait;
        end process;
end architecture;
