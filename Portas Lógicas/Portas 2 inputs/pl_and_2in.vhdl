entity pl_and_2in is
    port(
        A : in bit;
        B : in bit;
        S : out bit 
    );
end entity;

-- comportamento da entidade
architecture comp of pl_and_2in is
    -- lista de componentes (entidades internas)
    -- lista de sinais 
begin
    S <= A and B;
end architecture;

