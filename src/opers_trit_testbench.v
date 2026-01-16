//
// Filename: "opers_trit_testbench.v"
//
// Project: Троичный процессор для RISC-V
//
// Create date: 11.03.2025
// Edit date:   15.03.2025
//
// Description: Тестирование операция инверсии трита. Мнемоника NEG_TE.
//
// Author:      Vladimir Vasilev
// E-mail:      askfind@ya.ru
//
// GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007
//

`timescale 1ps / 1ps

module opers_trit_testbench;

    // Мониторинг сигналов
    initial begin
        //$monitor("Time = %02t: trit a = %x, trit c = %x, error = %b", $time, a, c, err);
    end

    initial begin
        $dumpfile ("extfile.vcd");
        $dumpvars (0, opers_trit_testbench);
        #1;
     end

endmodule
