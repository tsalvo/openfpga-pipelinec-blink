library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.c_structs_pkg.all;

  entity top_2bae is
port(
clk_74p25 : in std_logic;

-- IO for each main func
blink_return_output : out unsigned(0 downto 0)
  );
end top_2bae;
architecture arch of top_2bae is

attribute syn_keep : boolean;
attribute keep : string;
attribute dont_touch : string;


signal blink_return_output_output : unsigned(0 downto 0);
signal blink_0CLK_a5a1cd4e_return_output_output_reg : unsigned(0 downto 0);
attribute syn_keep of blink_0CLK_a5a1cd4e_return_output_output_reg : signal is true;
attribute keep of blink_0CLK_a5a1cd4e_return_output_output_reg : signal is "true";
attribute dont_touch of blink_0CLK_a5a1cd4e_return_output_output_reg : signal is "true";


begin

 -- IO regs
 process(clk_74p25) is
 begin
  if rising_edge(clk_74p25) then
   blink_0CLK_a5a1cd4e_return_output_output_reg <= blink_return_output_output;
  end if;
 end process;
 blink_return_output <= blink_0CLK_a5a1cd4e_return_output_output_reg;

-- Instantiate each main
-- main functions are always clock enabled, always running
blink_0CLK_a5a1cd4e : entity work.blink_0CLK_a5a1cd4e port map (
clk_74p25,
to_unsigned(1,1),
blink_return_output_output);


end arch;
