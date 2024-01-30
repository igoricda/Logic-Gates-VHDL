-- entidade com interface(s)
entity pl_xnor is
    port(
        A : in bit;
        B : in bit;
        S : out bit 
    );
end entity;

-- comportamento da entidade
architecture comp of pl_xnor is
    -- lista de componentes (entidades internas)
    -- lista de sinais 
begin
    S <= A xnor B;
end architecture;

