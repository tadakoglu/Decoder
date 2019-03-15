library ieee;
use ieee.std_logic.all;

entity yapi2 is

port(

giris1:in integer; -- say� al�p bunu koda �evirelim
izin:in bit; -- e�er izin verilmemi�sse yani izin de�i�kenim 0 ise t�m ��k��lar� 1 yapacak di�er durumda kod ��z�c� �al���r.
out1:out std_logic_vector(7 downto 0); --8 ��k��


);

end entity;


architecture mimari2 of yapi2 is

begin
  -- case ile daha h�zl� yap�labilir ama onun 'syntax'�n� unuttum.

  
	
if (izin = b'0') then
	
	dongu: for i in 0 to 7	 -- burada generate var m�yd� unuttum :(
	out1(i) <= '1'; -- �nce t�m giri�leri 1 alal�m sonrada a�a��daki fonksiyon gerekli istenen g�revi yaps�n..
	end for 

	if giris1 = x'0' then
	out1(0) <= '0';

	elsif giris1 x'1' then
	out1(1) <= '0';

	elsif giris1 x'2' then
	out1(2) <= '0';

	elsif giris1 x'3' then
	out1(3) <= '0';

	elsif giris1 x'4' then
	out1(4) <= '0';

	elsif giris1 x'5' then
	out1(5) <= '0';

	elsif giris1 x'6' then
	out1(6) <= '0';

	elsif giris1 x'7' then
	out1(6) <= '0';
	
elsif (izin = b'1') -- izin verilmemi� anlam�na geliyor

	dongu: for i in 0 to 7
	
	out1(i) <= '1'; -- izin yoksa t�m ��k��lar 1 yap�l�r.
	
	end for;
endif;


end architecture;

 --0 0 0     0 0 0 0 0 0 0 1
 --0 0 1 	 0 0 0 0 0 0 1 0 
 --0 1 0		 0 0 0 0 0 1 0 0