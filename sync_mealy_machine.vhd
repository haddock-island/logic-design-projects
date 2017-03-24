entity multi is
     port(A:in std_logic_vector(6 downto 0);
	       B :in std_logic_vector(3 downto 0); 
			 ctrl,clk :in std_logic;
			 sum1: inout std_logic_vector(6 downto 0);
			 cout1: inout std_logic;
			 Q  :inout std_logic_vector(5 downto 0);
			 P,r:inout std_logic_vector(3 downto 0);
			 C  :inout std_logic_vector(2 downto 0);
			 sum,Cout:inout std_logic_vector(1 downto 0));
end multi;

architecture Behavioral of multi is
component dff 
port( Q :out std_logic;d, clk, rst: in std_logic);
end component;
component fulladd 
  port(a,b,c: in std_logic; sum,carry :out std_logic);
end component;
signal j:integer:=0;
begin
   G1:for i in 0 to 0 generate
     r(0) <= B(0) and ctrl;
	  r(1) <= B(1) and ctrl;
	  r(2) <= B(2) and ctrl;
	  r(3) <= B(3) and ctrl;
		
     fa:dff port map(P(0),A(j),clk,r(0));
     fb:dff port map(Q(0),A(j),clk,ctrl);
     fc:dff port map(P(1),Q(0),clk,r(1));
    f1d:dff port map(Q(1),A(j),clk,ctrl);
     fe:dff port map(Q(2),Q(1),clk,ctrl);
     ff:dff port map(P(2),Q(2),clk,r(2));
     fg:dff port map(Q(3),A(j),clk,ctrl);
     fh:dff port map(Q(4),Q(3),clk,ctrl);
     fi:dff port map(Q(5),Q(4),clk,ctrl);  
     fj:dff port map(P(3),Q(5),clk,r(3));
     fk:dff port map(C(0),cout(0),clk,ctrl);
     fl:dff port map(C(1),cout(1),clk,ctrl);
     fm:dff port map(C(2),cout1,clk,ctrl);

     add1:fulladd port map(sum(0),cout(0),P(0),P(1),C(0));
	  add2:fulladd port map(sum(1),cout(1),P(2),P(3),C(1));
	  add3:fulladd port map(sum1(j),cout1,sum(0),sum(1),C(2));
	  	 
end generate G1;

p1:process(clk)
begin
 if clk='1' and clk'event then 
       j<=j+1;
 end if;
end process P1;


end Behavioral;

