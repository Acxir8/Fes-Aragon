Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

Entity CarritoMueve is
	port(clk, rst: in std_logic;
		ENTRADA: inout std_logic_vector (0 to 3);
		av, re, vd, vi, al: out std_logic);
end CarritoMueve;

architecture Sim of CarritoMueve is
begin

		contador: process (clk, rst)
			begin
				if(clk'event and clk ='1' and rst='0') then
				ENTRADA<=ENTRADA+1;
				end if;
				if(rst='1') then
				ENTRADA <="0000";
				end if;
			end process contador;
			avanza: process(ENTRADA)
			begin
				case ENTRADA is
					when "0000" =>av<= '1';
					when "0001" =>av<= '1';
					when "0010" =>av<= '1';
					when "0011" =>av<= '1';
					when "0100" =>av<= '1';
					when "0101" =>av<= '1';
					when "0111" =>av<= '1';
					when "1001" =>av<= '1';
					when "1010" =>av<= '1';
					when "1011" =>av<= '1';
					when others =>av<= '0';
				end case;
			end process avanza;
			reversa: process(ENTRADA)
			begin
				case ENTRADA is
					when "1100" =>re<= '1';
					when "1000" =>re<= '1';
					when "0110" =>re<= '1';
					when "1110" =>re<= '1';
					when others =>re<= '0';
				end case;
			end process reversa;
			
			derecha: process(ENTRADA)
			begin
				case ENTRADA is
					when "0010" =>vd<= '1';
					when "0011" =>vd<= '1';
					when "0110" =>vd<= '1';
					when "1010" =>vd<= '1';
					when "1110" =>vd<= '1';
					when "1000" =>vd<= '1';
					when "1001" =>vd<= '1';
					when "1011" =>vd<= '1';
					when "1100" =>vd<= '1';
					when others =>vd<= '0';
				end case;
			end process derecha;
			
			izquierda: process(ENTRADA)
			begin
				case ENTRADA is
					when "0100" =>vi<= '1';
					when "0101" =>vi<= '1';
					when "1101" =>vi<= '1';
					when others =>vi<= '0';
				end case;
			end process izquierda;
			
			alarma: process(ENTRADA)
			begin
				case ENTRADA is
					when "0110" =>al<= '1';
					when "0111" =>al<= '1';
					when "1110" =>al<= '1';
					when "1111" =>al<= '1';
					when others =>al<= '0';
				end case;
			end process alarma;
end Sim;