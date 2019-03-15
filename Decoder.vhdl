library ieee;
use ieee.std_logic.all;

entity yapi2 is

port(

giris1:in integer; -- sayý alýp bunu koda çevirelim
izin:in bit; -- eðer izin verilmemiþsse yani izin deðiþkenim 0 ise tüm çýkýþlarý 1 yapacak diðer durumda kod çözücü çalýþýr.
out1:out std_logic_vector(7 downto 0); --8 çýkýþ


);

end entity;


architecture mimari2 of yapi2 is

begin
  -- case ile daha hýzlý yapýlabilir ama onun 'syntax'ýný unuttum.

  
	
if (izin = b'0') then
	
	dongu: for i in 0 to 7	 -- burada generate var mýydý unuttum :(
	out1(i) <= '1'; -- önce tüm giriþleri 1 alalým sonrada aþaðýdaki fonksiyon gerekli istenen görevi yapsýn..
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
	
elsif (izin = b'1') -- izin verilmemiþ anlamýna geliyor

	dongu: for i in 0 to 7
	
	out1(i) <= '1'; -- izin yoksa tüm çýkýþlar 1 yapýlýr.
	
	end for;
endif;


end architecture;

 --0 0 0     0 0 0 0 0 0 0 1
 --0 0 1 	 0 0 0 0 0 0 1 0 
 --0 1 0		 0 0 0 0 0 1 0 0