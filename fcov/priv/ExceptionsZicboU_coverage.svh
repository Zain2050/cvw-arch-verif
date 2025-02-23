///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
// 
// Written: Corey Hickson chickson@hmc.edu 29 November 2024
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

`define COVER_EXCEPTIONSZICBOU
covergroup ExceptionsZicboU_exceptions_cg with function sample(ins_exceptionszicbou_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints
    cbo_inval: coverpoint ins.current.insn {
        bins cbo_inval = {32'b000000000000_?????_010_00000_0001111};
    }
    cbo_flushclean: coverpoint ins.current.insn {
        bins cbo_flush = {32'b000000000010_?????_010_00000_0001111};
        bins cbo_clean = {32'b000000000001_?????_010_00000_0001111};
    }
    cbo_zero: coverpoint ins.current.insn {
        bins cbo_zero = {32'b000000000100_?????_010_00000_0001111};
    }
    menvcfg_cbie: coverpoint ins.current.csr[12'h30A][5:4] {
        ignore_bins reserved = {2'b10};
    }
    menvcfg_cbcfe: coverpoint ins.current.csr[12'h30A][6] {
    }
    menvcfg_cbze: coverpoint ins.current.csr[12'h30A][7] {
    }
    priv_modes: coverpoint ins.current.mode {
        bins U_mode = {2'b00};
        bins M_mode = {2'b11};
    }

    // main coverpoints
    cp_cbie:  cross cbo_inval,      menvcfg_cbie,  priv_modes;
    cp_cbcfe: cross cbo_flushclean, menvcfg_cbcfe, priv_modes;
    cp_cbze:  cross cbo_zero,       menvcfg_cbze,  priv_modes;

endgroup

function void exceptionszicbou_sample(int hart, int issue, ins_t ins);
    ExceptionsZicboU_exceptions_cg.sample(ins);
endfunction
