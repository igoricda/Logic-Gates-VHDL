entity pl_and_3in is
    port(
        A: in bit;
        B: in bit;
        c: in bit;
        S: out bit
    );
end entity;
architecture comp of pl_and_3in is

begin
    S <= A and B and C;
end architecture;
