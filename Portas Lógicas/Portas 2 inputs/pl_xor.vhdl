entity pl_xor is
    port(
         A : in bit;
         B : in bit;
         S : out bit
    );
end entity;

architecture comportamento of pl_xor is
--SubEntidades
--Sinais internos
begin
    S <= A xor B;
end architecture;
