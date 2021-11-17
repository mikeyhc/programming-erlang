-module(geometry).
-export([area/1, perimeter/1, test/0]).

area({rectangle, Width, Height}) -> Width * Height;
area({square, Side}) -> Side * Side;
area({circle, Radius}) -> 3.14159 * Radius * Radius;
area({triangle, A, B, _C}) -> A * B / 2.

perimeter({rectangle, Width, Height}) -> Width * Height * 2;
perimeter({square, Side}) -> Side * 4;
perimeter({circle, Radius}) -> 2 * 3.14159 * Radius;
perimeter({triangle, A, B, C}) -> A + B + C.

test() ->
    12 = area({rectangle, 3, 4}),
    144 = area({square, 12}),
    tests_worked.
