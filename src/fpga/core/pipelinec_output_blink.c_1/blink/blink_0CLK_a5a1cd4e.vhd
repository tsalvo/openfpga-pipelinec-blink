-- Timing params:
--   Fixed?: True
--   Pipeline Slices: []
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 5
entity blink_0CLK_a5a1cd4e is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 return_output : out unsigned(0 downto 0));
end blink_0CLK_a5a1cd4e;
architecture arch of blink_0CLK_a5a1cd4e is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal led : unsigned(0 downto 0) := to_unsigned(0, 1);
signal counter : unsigned(26 downto 0) := to_unsigned(0, 27);
signal REG_COMB_led : unsigned(0 downto 0);
signal REG_COMB_counter : unsigned(26 downto 0);

-- Each function instance gets signals
-- BIN_OP_EQ[blink_c_l17_c6_55fe]
signal BIN_OP_EQ_blink_c_l17_c6_55fe_left : unsigned(26 downto 0);
signal BIN_OP_EQ_blink_c_l17_c6_55fe_right : unsigned(26 downto 0);
signal BIN_OP_EQ_blink_c_l17_c6_55fe_return_output : unsigned(0 downto 0);

-- led_MUX[blink_c_l17_c3_de29]
signal led_MUX_blink_c_l17_c3_de29_cond : unsigned(0 downto 0);
signal led_MUX_blink_c_l17_c3_de29_iftrue : unsigned(0 downto 0);
signal led_MUX_blink_c_l17_c3_de29_iffalse : unsigned(0 downto 0);
signal led_MUX_blink_c_l17_c3_de29_return_output : unsigned(0 downto 0);

-- counter_MUX[blink_c_l17_c3_de29]
signal counter_MUX_blink_c_l17_c3_de29_cond : unsigned(0 downto 0);
signal counter_MUX_blink_c_l17_c3_de29_iftrue : unsigned(26 downto 0);
signal counter_MUX_blink_c_l17_c3_de29_iffalse : unsigned(26 downto 0);
signal counter_MUX_blink_c_l17_c3_de29_return_output : unsigned(26 downto 0);

-- UNARY_OP_NOT[blink_c_l20_c12_345e]
signal UNARY_OP_NOT_blink_c_l20_c12_345e_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_blink_c_l20_c12_345e_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[blink_c_l26_c5_f181]
signal BIN_OP_PLUS_blink_c_l26_c5_f181_left : unsigned(26 downto 0);
signal BIN_OP_PLUS_blink_c_l26_c5_f181_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_blink_c_l26_c5_f181_return_output : unsigned(27 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_blink_c_l17_c6_55fe
BIN_OP_EQ_blink_c_l17_c6_55fe : entity work.BIN_OP_EQ_uint27_t_uint27_t_0CLK_de264c78 port map (
BIN_OP_EQ_blink_c_l17_c6_55fe_left,
BIN_OP_EQ_blink_c_l17_c6_55fe_right,
BIN_OP_EQ_blink_c_l17_c6_55fe_return_output);

-- led_MUX_blink_c_l17_c3_de29
led_MUX_blink_c_l17_c3_de29 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
led_MUX_blink_c_l17_c3_de29_cond,
led_MUX_blink_c_l17_c3_de29_iftrue,
led_MUX_blink_c_l17_c3_de29_iffalse,
led_MUX_blink_c_l17_c3_de29_return_output);

-- counter_MUX_blink_c_l17_c3_de29
counter_MUX_blink_c_l17_c3_de29 : entity work.MUX_uint1_t_uint27_t_uint27_t_0CLK_de264c78 port map (
counter_MUX_blink_c_l17_c3_de29_cond,
counter_MUX_blink_c_l17_c3_de29_iftrue,
counter_MUX_blink_c_l17_c3_de29_iffalse,
counter_MUX_blink_c_l17_c3_de29_return_output);

-- UNARY_OP_NOT_blink_c_l20_c12_345e
UNARY_OP_NOT_blink_c_l20_c12_345e : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_blink_c_l20_c12_345e_expr,
UNARY_OP_NOT_blink_c_l20_c12_345e_return_output);

-- BIN_OP_PLUS_blink_c_l26_c5_f181
BIN_OP_PLUS_blink_c_l26_c5_f181 : entity work.BIN_OP_PLUS_uint27_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_blink_c_l26_c5_f181_left,
BIN_OP_PLUS_blink_c_l26_c5_f181_right,
BIN_OP_PLUS_blink_c_l26_c5_f181_return_output);



-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Registers
 led,
 counter,
 -- All submodule outputs
 BIN_OP_EQ_blink_c_l17_c6_55fe_return_output,
 led_MUX_blink_c_l17_c3_de29_return_output,
 counter_MUX_blink_c_l17_c3_de29_return_output,
 UNARY_OP_NOT_blink_c_l20_c12_345e_return_output,
 BIN_OP_PLUS_blink_c_l26_c5_f181_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_blink_c_l17_c6_55fe_left : unsigned(26 downto 0);
 variable VAR_BIN_OP_EQ_blink_c_l17_c6_55fe_right : unsigned(26 downto 0);
 variable VAR_BIN_OP_EQ_blink_c_l17_c6_55fe_return_output : unsigned(0 downto 0);
 variable VAR_led_MUX_blink_c_l17_c3_de29_iftrue : unsigned(0 downto 0);
 variable VAR_led_MUX_blink_c_l17_c3_de29_iffalse : unsigned(0 downto 0);
 variable VAR_led_MUX_blink_c_l17_c3_de29_return_output : unsigned(0 downto 0);
 variable VAR_led_MUX_blink_c_l17_c3_de29_cond : unsigned(0 downto 0);
 variable VAR_counter_MUX_blink_c_l17_c3_de29_iftrue : unsigned(26 downto 0);
 variable VAR_counter_blink_c_l22_c5_420e : unsigned(26 downto 0);
 variable VAR_counter_MUX_blink_c_l17_c3_de29_iffalse : unsigned(26 downto 0);
 variable VAR_counter_blink_c_l26_c5_0244 : unsigned(26 downto 0);
 variable VAR_counter_MUX_blink_c_l17_c3_de29_return_output : unsigned(26 downto 0);
 variable VAR_counter_MUX_blink_c_l17_c3_de29_cond : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_blink_c_l20_c12_345e_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_blink_c_l20_c12_345e_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_blink_c_l26_c5_f181_left : unsigned(26 downto 0);
 variable VAR_BIN_OP_PLUS_blink_c_l26_c5_f181_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_blink_c_l26_c5_f181_return_output : unsigned(27 downto 0);
 -- State registers comb logic variables
variable REG_VAR_led : unsigned(0 downto 0);
variable REG_VAR_counter : unsigned(26 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_led := led;
  REG_VAR_counter := counter;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_counter_blink_c_l22_c5_420e := resize(to_unsigned(0, 1), 27);
     VAR_counter_MUX_blink_c_l17_c3_de29_iftrue := VAR_counter_blink_c_l22_c5_420e;
     VAR_BIN_OP_PLUS_blink_c_l26_c5_f181_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_blink_c_l17_c6_55fe_right := to_unsigned(74249999, 27);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;

     -- Submodule level 0
     VAR_BIN_OP_EQ_blink_c_l17_c6_55fe_left := counter;
     VAR_BIN_OP_PLUS_blink_c_l26_c5_f181_left := counter;
     VAR_UNARY_OP_NOT_blink_c_l20_c12_345e_expr := led;
     VAR_led_MUX_blink_c_l17_c3_de29_iffalse := led;
     -- BIN_OP_EQ[blink_c_l17_c6_55fe] LATENCY=0
     -- Inputs
     BIN_OP_EQ_blink_c_l17_c6_55fe_left <= VAR_BIN_OP_EQ_blink_c_l17_c6_55fe_left;
     BIN_OP_EQ_blink_c_l17_c6_55fe_right <= VAR_BIN_OP_EQ_blink_c_l17_c6_55fe_right;
     -- Outputs
     VAR_BIN_OP_EQ_blink_c_l17_c6_55fe_return_output := BIN_OP_EQ_blink_c_l17_c6_55fe_return_output;

     -- UNARY_OP_NOT[blink_c_l20_c12_345e] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_blink_c_l20_c12_345e_expr <= VAR_UNARY_OP_NOT_blink_c_l20_c12_345e_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_blink_c_l20_c12_345e_return_output := UNARY_OP_NOT_blink_c_l20_c12_345e_return_output;

     -- BIN_OP_PLUS[blink_c_l26_c5_f181] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_blink_c_l26_c5_f181_left <= VAR_BIN_OP_PLUS_blink_c_l26_c5_f181_left;
     BIN_OP_PLUS_blink_c_l26_c5_f181_right <= VAR_BIN_OP_PLUS_blink_c_l26_c5_f181_right;
     -- Outputs
     VAR_BIN_OP_PLUS_blink_c_l26_c5_f181_return_output := BIN_OP_PLUS_blink_c_l26_c5_f181_return_output;

     -- Submodule level 1
     VAR_counter_MUX_blink_c_l17_c3_de29_cond := VAR_BIN_OP_EQ_blink_c_l17_c6_55fe_return_output;
     VAR_led_MUX_blink_c_l17_c3_de29_cond := VAR_BIN_OP_EQ_blink_c_l17_c6_55fe_return_output;
     VAR_counter_blink_c_l26_c5_0244 := resize(VAR_BIN_OP_PLUS_blink_c_l26_c5_f181_return_output, 27);
     VAR_led_MUX_blink_c_l17_c3_de29_iftrue := VAR_UNARY_OP_NOT_blink_c_l20_c12_345e_return_output;
     VAR_counter_MUX_blink_c_l17_c3_de29_iffalse := VAR_counter_blink_c_l26_c5_0244;
     -- led_MUX[blink_c_l17_c3_de29] LATENCY=0
     -- Inputs
     led_MUX_blink_c_l17_c3_de29_cond <= VAR_led_MUX_blink_c_l17_c3_de29_cond;
     led_MUX_blink_c_l17_c3_de29_iftrue <= VAR_led_MUX_blink_c_l17_c3_de29_iftrue;
     led_MUX_blink_c_l17_c3_de29_iffalse <= VAR_led_MUX_blink_c_l17_c3_de29_iffalse;
     -- Outputs
     VAR_led_MUX_blink_c_l17_c3_de29_return_output := led_MUX_blink_c_l17_c3_de29_return_output;

     -- counter_MUX[blink_c_l17_c3_de29] LATENCY=0
     -- Inputs
     counter_MUX_blink_c_l17_c3_de29_cond <= VAR_counter_MUX_blink_c_l17_c3_de29_cond;
     counter_MUX_blink_c_l17_c3_de29_iftrue <= VAR_counter_MUX_blink_c_l17_c3_de29_iftrue;
     counter_MUX_blink_c_l17_c3_de29_iffalse <= VAR_counter_MUX_blink_c_l17_c3_de29_iffalse;
     -- Outputs
     VAR_counter_MUX_blink_c_l17_c3_de29_return_output := counter_MUX_blink_c_l17_c3_de29_return_output;

     -- Submodule level 2
     REG_VAR_counter := VAR_counter_MUX_blink_c_l17_c3_de29_return_output;
     REG_VAR_led := VAR_led_MUX_blink_c_l17_c3_de29_return_output;
     VAR_return_output := VAR_led_MUX_blink_c_l17_c3_de29_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_led <= REG_VAR_led;
REG_COMB_counter <= REG_VAR_counter;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     led <= REG_COMB_led;
     counter <= REG_COMB_counter;
 end if;
 end if;
end process;

end arch;
