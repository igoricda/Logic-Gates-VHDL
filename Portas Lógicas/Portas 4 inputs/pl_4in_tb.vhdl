entity pl_4in_tb is
end entity;

architecture testbench of pl_4in_tb is
    component pl_and_4in is
        port(
            A: in bit;
            B: in bit;
            C: in bit;
            D: in bit;
            S: out bit
        );
    end component;
    component pl_or_4in is
        port(
            A: in bit;
            B: in bit;
            C: in bit;
            D: in bit;
            S: out bit
        );
    end component;
    
    signal sA, sB, sC, sD, sAND, sOR : bit;

begin 
    
    u_pl_and_4in : pl_and_4in port map(sA, sB, sC, sD, sAND);
    
    u_pl_or_4in : pl_or_4in port map(sA, sB, sC, sD, sOR);
    
    u_tb : process  
            begin
                sA <= '0';
                sB <= '0';
                sC <= '0';
                sD <= '0';
                wait for 10 ns;
                
                sA <= '0';
                sB <= '0';
                sC <= '0';
                sD <= '1';
                wait for 10 ns;
                
                sA <= '0';
                sB <= '0';
                sC <= '1';
                sD <= '0';
                wait for 10 ns;
                
                sA <= '0';
                sB <= '0';
                sC <= '1';
                sD <= '1';
                wait for 10 ns;
                
                sA <= '0';
                sB <= '1';
                sC <= '0';
                sD <= '0';
                wait for 10 ns;
                
                sA <= '0';
                sB <= '1';
                sC <= '0';
                sD <= '1';
                wait for 10 ns;
                
                sA <= '0';
                sB <= '1';
                sC <= '1';
                sD <= '0';
                wait for 10 ns;
                
                sA <= '0';
                sB <= '1';
                sC <= '1';
                sD <= '1';
                wait for 10 ns;
                
                sA <= '1';
                sB <= '0';
                sC <= '0';
                sD <= '0';
                wait for 10 ns;
                
                sA <= '1';
                sB <= '0';
                sC <= '0';
                sD <= '1';
   
               wait for 10 ns;
                
                sA <= '1';
                sB <= '0';
                sC <= '1';
                sD <= '0';
                wait for 10 ns;
                
                sA <= '1';
                sB <= '0';
                sC <= '1';
                sD <= '1';
                wait for 10 ns;
                
                sA <= '1';
                sB <= '1';
                sC <= '0';
                sD <= '0';
                wait for 10 ns;
                
                sA <= '1';
                sB <= '1';
                sC <= '0';
                sD <= '1';
                wait for 10 ns;
                
                sA <= '1';
                sB <= '1';
                sC <= '1';
                sD <= '1';
                wait for 10 ns;
                
                wait;
            end process;
end architecture;            
