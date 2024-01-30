-- porta lógica NAND
-- 08/09/2023

-- entidade com interface(s)
entity pl_nand is
    port(
        A : in bit;
        B : in bit;
        S : out bit 
    );
end entity;

-- comportamento da entidade
architecture comp of pl_nand is
    -- lista de componentes (entidades internas)
    -- lista de sinais 
begin
    S <= A nand B;
end architecture;






