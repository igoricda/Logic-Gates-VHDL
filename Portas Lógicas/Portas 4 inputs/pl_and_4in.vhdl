entity pl_and_4in is
    port(
        A: in bit;
        B: in bit;
        C: in bit;
        D: in bit;
        S: out bit
    );
end entity;

architecture comp of pl_and_4in is
begin
    S <= A and B and C and D;
end architecture;
