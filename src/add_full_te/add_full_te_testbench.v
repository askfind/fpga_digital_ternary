//
// Filename: "add_full_te_testbench.v"
//
// Project: Троичный процессор для RISC-V
//
// Create date: 11.03.2025
// Edit date:   15.03.2025
//
// Description: Тестирование операция инверсии трита. Мнемоника ADD_FULL_TE.
//
// Author:      Vladimir Vasilev
// E-mail:      askfind@ya.ru
//
// GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007
//

`timescale 1ps / 1ps

module add_full_te_testbench;

    // Входной сигнал
    reg[1:0] carry_in;
    reg[1:0] a;
    reg[1:0] b;

    // Выходной сигнал
    wire [1:0] sum;
    wire [1:0] carry_out;
    wire err;

    // Instantiate the Unit Under Test (UUT)
    add_full_te uut (
        .carry_in(carry_in),
        .a(a),
        .b(b),
        .sum(sum),
        .carry_out(carry_out),
        .err(err)
    );

    initial begin
        // Применение различных комбинаций входных сигналов
        #10 carry_in = 2'b10;    // trit = +1
        #10 a = 2'b10;   // trit = +1
        #10 b = 2'b10;   // trit = +1
        #10 carry_in = 2'b10;    // trit = +1
        #10 a = 2'b00;   // trit =  0
        #10 b = 2'b00;   // trit =  0
        #10 carry_in = 2'b10;    // trit = +1
        #10 a = 2'b01;   // trit = -1
        #10 b = 2'b01;   // trit = -1
        #10 carry_in = 2'b10;    // trit = +1
        #10 a = 2'b11;   // trit = error
        #10 b = 2'b11;   // trit = error

        // Завершение симуляции
        #10 $finish;
    end

    // Мониторинг сигналов
    initial begin
        $monitor("Time = %02t: trit carry_in = %x, trit a = %x, trit b = %x, trit c = %x, error = %b", $time, carry_in, a, b, sum, carry_out, err);
    end

    initial begin
        $dumpfile ("extfile.vcd");
        $dumpvars (0, add_full_te_testbench);
        #1;
     end

endmodule
