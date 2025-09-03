// Water bottle vending machine (Cost = Rs. 15)
module vending_machine (
    input clk,
    input rst,
    input [1:0] in,            // Rs. 0, 5, 10 represented as 00, 01, 10
    output reg out,           // 1 when item is dispensed
    output reg [1:0] change   // change returned in Rs.
);

    parameter s0 = 2'b00;  // Rs. 0
    parameter s1 = 2'b01;  // Rs. 5
    parameter s2 = 2'b10;  // Rs. 10

    reg [1:0] ps, ns;  // present and next state

    always @(posedge clk) begin
        if (!rst)
            ps <= s0;
        else
            ps <= ns;
    end

    always @(*) begin
        // Default assignments
        ns = ps;
        out = 0;
        change = 2'b00;

        case (ps)
            s0: begin
                case (in)
                    2'b00: ns = s0;               // Rs. 0
                    2'b01: ns = s1;               // Rs. 5
                    2'b10: ns = s2;               // Rs. 10
                    default: ns = s0;
                endcase
            end

            s1: begin
                case (in)
                    2'b00: begin ns = s0; change = 2'b01; end   // No input, return Rs. 5
                    2'b01: ns = s2;                              // +Rs.5 = Rs.10
                    2'b10: begin ns = s0; out = 1; change = 2'b00; end // +Rs.10 = Rs.15
                    default: ns = s0;
                endcase
            end

            s2: begin
                case (in)
                    2'b00: begin ns = s0; change = 2'b10; end   // No input, return Rs.10
                    2'b01: begin ns = s0; out = 1; change = 2'b00; end // +Rs.5 = Rs.15
                    2'b10: begin ns = s0; out = 1; change = 2'b01; end // +Rs.10 = Rs.20, return Rs.5
                    default: ns = s0;
                endcase
            end

            default: ns = s0;
        endcase
    end

endmodule
