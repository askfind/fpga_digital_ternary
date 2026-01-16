//
// Filename: "neg_te_testbench.v"
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

module neg_te_testbench;

    // Входной сигнал
    reg[1:0] a;

    // Выходной сигнал
    wire[1:0] c;

    // Выходной сигнал
    wire err;

    // Instantiate the Unit Under Test (UUT)
    neg_te uut (
        .a(a),
        .c(c),
        .err(err)
    );

    initial begin
        // Применение различных комбинаций входных сигналов
        #10 a = 2'b10;   // trit = +1
        #10 a = 2'b00;   // trit =  0
        #10 a = 2'b01;   // trit = -1
        #10 a = 2'b11;   // trit = error

        // Завершение симуляции
        #10 $finish;
    end

    // Мониторинг сигналов
    initial begin
        $monitor("Time = %02t: trit a = %x, trit c = %x, error = %b", $time, a, c, err);
    end

    initial begin
        $dumpfile ("extfile.vcd");
        $dumpvars (0, neg_te_testbench);
        #1;
     end

endmodule
