entity pl_nor is
    port(
        A: in bit;
        B: in bit;
        S: out bit
    );
end entity;

architecture comp of pl_nor is

begin
    S <= A nor B;
end architecture; 
