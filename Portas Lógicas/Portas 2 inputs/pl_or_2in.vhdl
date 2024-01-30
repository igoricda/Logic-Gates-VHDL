-- Entidade - OR de 2 inputs

entity pl_or_2in is
    port(
         A : in bit;
         B : in bit;
         S : out bit
    );
end entity;

architecture comportamento of pl_or_2in is
--SubEntidades
--Sinais internos
begin
    S <= A or B;
end architecture comportamento;
