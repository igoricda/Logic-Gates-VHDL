entity pl_or_3in is
    port(
        A: in bit;
        B: in bit;
        c: in bit;
        S: out bit
    );
end entity;
architecture comp of pl_or_3in is

begin
    S <= A or B or C;
end architecture;
