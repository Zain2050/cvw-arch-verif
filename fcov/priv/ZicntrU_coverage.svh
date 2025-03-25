///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Madeleine Kan Mkan@hmc.edu, Roman De Santos rdesantos@hmc.edu November 20 2024
// 
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// Licensed under the Solderpad Hardware License v 2.1 (the “License”); you may not use this file 
// except in compliance with the License, or, at your option, the Apache License version 2.0. You 
// may obtain a copy of the License at
//
// https://solderpad.org/licenses/SHL-2.1/
//
// Unless required by applicable law or agreed to in writing, any work distributed under the 
// License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, 
// either express or implied. See the License for the specific language governing permissions 
// and limitations under the License.
////////////////////////////////////////////////////////////////////////////////////////////////

`define COVER_ZICNTRU
covergroup ZicntrU_ucounters_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "coverage/RISCV_coverage_standard_coverpoints.svh"
    // Counter access in user mode 

    // building blocks for the main coverpoints
    csrr: coverpoint ins.current.insn  {
        wildcard bins csrr = {32'b????????????_00000_010_?????_1110011};
    }

    counters_mcounteren: coverpoint {ins.current.insn[31:20], ins.current.csr[12'h306][31:0] } {
        bins cycle_enabled         = {44'b110000000000_00000000000000000000000000000001};
        bins time_enabled          = {44'b110000000001_00000000000000000000000000000010};
        bins instret_enabled       = {44'b110000000010_00000000000000000000000000000100};
        bins hpmcounter3_enabled   = {44'b110000000011_00000000000000000000000000001000};
        bins hpmcounter4_enabled   = {44'b110000000100_00000000000000000000000000010000};
        bins hpmcounter5_enabled   = {44'b110000000101_00000000000000000000000000100000};
        bins hpmcounter6_enabled   = {44'b110000000110_00000000000000000000000001000000};
        bins hpmcounter7_enabled   = {44'b110000000111_00000000000000000000000010000000};
        bins hpmcounter8_enabled   = {44'b110000001000_00000000000000000000000100000000};
        bins hpmcounter9_enabled   = {44'b110000001001_00000000000000000000001000000000};
        bins hpmcounter10_enabled  = {44'b110000001010_00000000000000000000010000000000};
        bins hpmcounter11_enabled  = {44'b110000001011_00000000000000000000100000000000};
        bins hpmcounter12_enabled  = {44'b110000001100_00000000000000000001000000000000};
        bins hpmcounter13_enabled  = {44'b110000001101_00000000000000000010000000000000};
        bins hpmcounter14_enabled  = {44'b110000001110_00000000000000000100000000000000};
        bins hpmcounter15_enabled  = {44'b110000001111_00000000000000001000000000000000};
        bins hpmcounter16_enabled  = {44'b110000010000_00000000000000010000000000000000};
        bins hpmcounter17_enabled  = {44'b110000010001_00000000000000100000000000000000};
        bins hpmcounter18_enabled  = {44'b110000010010_00000000000001000000000000000000};
        bins hpmcounter19_enabled  = {44'b110000010011_00000000000010000000000000000000};
        bins hpmcounter20_enabled  = {44'b110000010100_00000000000100000000000000000000};
        bins hpmcounter21_enabled  = {44'b110000010101_00000000001000000000000000000000};
        bins hpmcounter22_enabled  = {44'b110000010110_00000000010000000000000000000000};
        bins hpmcounter23_enabled  = {44'b110000010111_00000000100000000000000000000000};
        bins hpmcounter24_enabled  = {44'b110000011000_00000001000000000000000000000000};
        bins hpmcounter25_enabled  = {44'b110000011001_00000010000000000000000000000000};
        bins hpmcounter26_enabled  = {44'b110000011010_00000100000000000000000000000000};
        bins hpmcounter27_enabled  = {44'b110000011011_00001000000000000000000000000000};
        bins hpmcounter28_enabled  = {44'b110000011100_00010000000000000000000000000000};
        bins hpmcounter29_enabled  = {44'b110000011101_00100000000000000000000000000000};
        bins hpmcounter30_enabled  = {44'b110000011110_01000000000000000000000000000000};
        bins hpmcounter31_enabled  = {44'b110000011111_10000000000000000000000000000000};

        bins cycle_disabled         = {44'b110000000000_11111111111111111111111111111110};
        bins time_disabled          = {44'b110000000001_11111111111111111111111111111101};
        bins instret_disabled       = {44'b110000000010_11111111111111111111111111111011};
        bins hpmcounter3_disabled   = {44'b110000000011_11111111111111111111111111110111};
        bins hpmcounter4_disabled   = {44'b110000000100_11111111111111111111111111101111};
        bins hpmcounter5_disabled   = {44'b110000000101_11111111111111111111111111011111};
        bins hpmcounter6_disabled   = {44'b110000000110_11111111111111111111111110111111};
        bins hpmcounter7_disabled   = {44'b110000000111_11111111111111111111111101111111};
        bins hpmcounter8_disabled   = {44'b110000001000_11111111111111111111111011111111};
        bins hpmcounter9_disabled   = {44'b110000001001_11111111111111111111110111111111};
        bins hpmcounter10_disabled  = {44'b110000001010_11111111111111111111101111111111};
        bins hpmcounter11_disabled  = {44'b110000001011_11111111111111111111011111111111};
        bins hpmcounter12_disabled  = {44'b110000001100_11111111111111111110111111111111};
        bins hpmcounter13_disabled  = {44'b110000001101_11111111111111111101111111111111};
        bins hpmcounter14_disabled  = {44'b110000001110_11111111111111111011111111111111};
        bins hpmcounter15_disabled  = {44'b110000001111_11111111111111110111111111111111};
        bins hpmcounter16_disabled  = {44'b110000010000_11111111111111101111111111111111};
        bins hpmcounter17_disabled  = {44'b110000010001_11111111111111011111111111111111};
        bins hpmcounter18_disabled  = {44'b110000010010_11111111111110111111111111111111};
        bins hpmcounter19_disabled  = {44'b110000010011_11111111111101111111111111111111};
        bins hpmcounter20_disabled  = {44'b110000010100_11111111111011111111111111111111};
        bins hpmcounter21_disabled  = {44'b110000010101_11111111110111111111111111111111};
        bins hpmcounter22_disabled  = {44'b110000010110_11111111101111111111111111111111};
        bins hpmcounter23_disabled  = {44'b110000010111_11111111011111111111111111111111};
        bins hpmcounter24_disabled  = {44'b110000011000_11111110111111111111111111111111};
        bins hpmcounter25_disabled  = {44'b110000011001_11111101111111111111111111111111};
        bins hpmcounter26_disabled  = {44'b110000011010_11111011111111111111111111111111};
        bins hpmcounter27_disabled  = {44'b110000011011_11110111111111111111111111111111};
        bins hpmcounter28_disabled  = {44'b110000011100_11101111111111111111111111111111};
        bins hpmcounter29_disabled  = {44'b110000011101_11011111111111111111111111111111};
        bins hpmcounter30_disabled  = {44'b110000011110_10111111111111111111111111111111};
        bins hpmcounter31_disabled  = {44'b110000011111_01111111111111111111111111111111};
        
        `ifdef XLEN32
            bins cycleh_enabled         = {44'b110010000000_00000000000000000000000000000001};
            bins timeh_enabled          = {44'b110010000001_00000000000000000000000000000010};
            bins instreth_enabled       = {44'b110010000010_00000000000000000000000000000100};
            bins hpmcounter3h_enabled   = {44'b110010000011_00000000000000000000000000001000};
            bins hpmcounter4h_enabled   = {44'b110010000100_00000000000000000000000000010000};
            bins hpmcounter5h_enabled   = {44'b110010000101_00000000000000000000000000100000};
            bins hpmcounter6h_enabled   = {44'b110010000110_00000000000000000000000001000000};
            bins hpmcounter7h_enabled   = {44'b110010000111_00000000000000000000000010000000};
            bins hpmcounter8h_enabled   = {44'b110010001000_00000000000000000000000100000000};
            bins hpmcounter9h_enabled   = {44'b110010001001_00000000000000000000001000000000};
            bins hpmcounter10h_enabled  = {44'b110010001010_00000000000000000000010000000000};
            bins hpmcounter11h_enabled  = {44'b110010001011_00000000000000000000100000000000};
            bins hpmcounter12h_enabled  = {44'b110010001100_00000000000000000001000000000000};
            bins hpmcounter13h_enabled  = {44'b110010001101_00000000000000000010000000000000};
            bins hpmcounter14h_enabled  = {44'b110010001110_00000000000000000100000000000000};
            bins hpmcounter15h_enabled  = {44'b110010001111_00000000000000001000000000000000};
            bins hpmcounter16h_enabled  = {44'b110010010000_00000000000000010000000000000000};
            bins hpmcounter17h_enabled  = {44'b110010010001_00000000000000100000000000000000};
            bins hpmcounter18h_enabled  = {44'b110010010010_00000000000001000000000000000000};
            bins hpmcounter19h_enabled  = {44'b110010010011_00000000000010000000000000000000};
            bins hpmcounter20h_enabled  = {44'b110010010100_00000000000100000000000000000000};
            bins hpmcounter21h_enabled  = {44'b110010010101_00000000001000000000000000000000};
            bins hpmcounter22h_enabled  = {44'b110010010110_00000000010000000000000000000000};
            bins hpmcounter23h_enabled  = {44'b110010010111_00000000100000000000000000000000};
            bins hpmcounter24h_enabled  = {44'b110010011000_00000001000000000000000000000000};
            bins hpmcounter25h_enabled  = {44'b110010011001_00000010000000000000000000000000};
            bins hpmcounter26h_enabled  = {44'b110010011010_00000100000000000000000000000000};
            bins hpmcounter27h_enabled  = {44'b110010011011_00001000000000000000000000000000};
            bins hpmcounter28h_enabled  = {44'b110010011100_00010000000000000000000000000000};
            bins hpmcounter29h_enabled  = {44'b110010011101_00100000000000000000000000000000};
            bins hpmcounter30h_enabled  = {44'b110010011110_01000000000000000000000000000000};
            bins hpmcounter31h_enabled  = {44'b110010011111_10000000000000000000000000000000};

            bins cycleh_disabled         = {44'b110010000000_11111111111111111111111111111110};
            bins timeh_disabled          = {44'b110010000001_11111111111111111111111111111101};
            bins instreth_disabled       = {44'b110010000010_11111111111111111111111111111011};
            bins hpmcounter3h_disabled   = {44'b110010000011_11111111111111111111111111110111};
            bins hpmcounter4h_disabled   = {44'b110010000100_11111111111111111111111111101111};
            bins hpmcounter5h_disabled   = {44'b110010000101_11111111111111111111111111011111};
            bins hpmcounter6h_disabled   = {44'b110010000110_11111111111111111111111110111111};
            bins hpmcounter7h_disabled   = {44'b110010000111_11111111111111111111111101111111};
            bins hpmcounter8h_disabled   = {44'b110010001000_11111111111111111111111011111111};
            bins hpmcounter9h_disabled   = {44'b110010001001_11111111111111111111110111111111};
            bins hpmcounter10h_disabled  = {44'b110010001010_11111111111111111111101111111111};
            bins hpmcounter11h_disabled  = {44'b110010001011_11111111111111111111011111111111};
            bins hpmcounter12h_disabled  = {44'b110010001100_11111111111111111110111111111111};
            bins hpmcounter13h_disabled  = {44'b110010001101_11111111111111111101111111111111};
            bins hpmcounter14h_disabled  = {44'b110010001110_11111111111111111011111111111111};
            bins hpmcounter15h_disabled  = {44'b110010001111_11111111111111110111111111111111};
            bins hpmcounter16h_disabled  = {44'b110010010000_11111111111111101111111111111111};
            bins hpmcounter17h_disabled  = {44'b110010010001_11111111111111011111111111111111};
            bins hpmcounter18h_disabled  = {44'b110010010010_11111111111110111111111111111111};
            bins hpmcounter19h_disabled  = {44'b110010010011_11111111111101111111111111111111};
            bins hpmcounter20h_disabled  = {44'b110010010100_11111111111011111111111111111111};
            bins hpmcounter21h_disabled  = {44'b110010010101_11111111110111111111111111111111};
            bins hpmcounter22h_disabled  = {44'b110010010110_11111111101111111111111111111111};
            bins hpmcounter23h_disabled  = {44'b110010010111_11111111011111111111111111111111};
            bins hpmcounter24h_disabled  = {44'b110010011000_11111110111111111111111111111111};
            bins hpmcounter25h_disabled  = {44'b110010011001_11111101111111111111111111111111};
            bins hpmcounter26h_disabled  = {44'b110010011010_11111011111111111111111111111111};
            bins hpmcounter27h_disabled  = {44'b110010011011_11110111111111111111111111111111};
            bins hpmcounter28h_disabled  = {44'b110010011100_11101111111111111111111111111111};
            bins hpmcounter29h_disabled  = {44'b110010011101_11011111111111111111111111111111};
            bins hpmcounter30h_disabled  = {44'b110010011110_10111111111111111111111111111111};
            bins hpmcounter31h_disabled  = {44'b110010011111_01111111111111111111111111111111};
        `endif
    }

    // main coverpoints
    cp_mcounteren_access_u: cross csrr, counters_mcounteren, priv_mode_u;
    cp_mcounteren_access_m: cross csrr, counters_mcounteren, priv_mode_m;
endgroup


function void zicntru_sample(int hart, int issue, ins_t ins);
  ZicntrU_ucounters_cg.sample(ins); 
endfunction
