--Entidade de teste para pl or 2in

entity pl_2in_tb is
    --lista de interface vazia
end entity;

architecture testbench of pl_2in_tb is
    component pl_or_2in is
        port(
             A : in bit;
             B : in bit;
             S : out bit
        );
        end component;
        
    component pl_nand is
        port(
             A : in bit;
             B : in bit;
             S : out bit
        );
        end component;
        
    component pl_xor is
        port(
             A : in bit;
             B : in bit;
             S : out bit
        );
        end component;
        
    component pl_nor is
        port(
             A : in bit;
             B : in bit;
             S : out bit
        );
        end component;
       
    component pl_and_2in is
        port(
             A : in bit;
             B : in bit;
             S : out bit
        );
        end component;
           
    component pl_xnor is
        port(
             A : in bit;
             B : in bit;
             S : out bit
        );
        end component;
    
    --signal sA : bit;
    --signal sB : bit;
    --signal sOR : bit;
    
    --sinais para conectar as PLs
    signal sA, sB, sOR, sNAND, sXOR, sNOR, sAND, sXNOR : bit;
    
begin   
    --instancia
    u_pl_or_2in : pl_or_2in port map(sA, sB, sOR);

    u_pl_nand : pl_nand port map(sA, sB, sNAND);
    
    u_pl_xor : pl_xor port map(sA, sB, sXOR);
    
    u_pl_nor : pl_nor port map(sA, sB, sNOR);
    
    u_pl_and_2in : pl_and_2in port map(sA, sB, sAND);
    
    u_pl_xnor : pl_xnor port map(sA, sB, sXNOR);
    
    u_tb : process
        begin
            sA <= '0';
            sB <= '0';
            wait for 10 ns;
            
            sA <= '0';
            sB <= '1';
            wait for 10 ns;
            
            sA <= '1';
            sB <= '0';
            wait for 10 ns;

            sA <= '1';
            sB <= '1';
            wait for 10 ns;
            
            wait;
        end process;
end architecture;
