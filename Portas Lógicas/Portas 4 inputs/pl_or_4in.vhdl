entity pl_or_4in is
    port(
        A: in bit;
        B: in bit;
        C: in bit;
        D: in bit;
        S: out bit
    );
end entity;

architecture comp of pl_or_4in is
begin
    S <= A or B or C or D;
end architecture;
