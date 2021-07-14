#@local simples, PATestFunction

gap> simples := AllPrimitiveGroups(NrMovedPoints, [8 .. 13], ONanScottType,
>                                  ["2"]);;
gap> simples := Filtered(simples, IsSimpleGroup);;

# TODO compare to built-in method
gap> PATestFunction := function(T)
>     local m, WP, random, G, N, d;
>     m := NrMovedPoints(T);
>     Print("T = ", ViewString(T), ", m = ", m, ":\n");
>     for d in [2 .. 4] do
>         WP := WreathProductProductAction(T, Group(SymmetricGroup(d).1));
>         random := Random(SymmetricGroup(m ^ d));
>         G := WP ^ random;
>         N := NormalizerInSymmetricGroupOfPrimitiveGroup(G);
>         Print("d = ", d, ", n = ", m^d, ", \c");
>         Print("|N| = ", PrintString(Size(N)), "\n");
>     od;
>     Print("\n");
> end;;

gap> PATestFunction(simples[1]);
T = PSL(2, 7), m = 8:
d = 2, n = 64, |N| = 112896
d = 3, n = 512, |N| = 56899584
d = 4, n = 4096, |N| = 12745506816

gap> PATestFunction(simples[2]);
T = A(8), m = 8:
d = 2, n = 64, |N| = 1625702400
d = 3, n = 512, |N| = 98322481152000
d = 4, n = 4096, |N| = 2642908293365760000

gap> PATestFunction(simples[3]);
T = PSL(2, 8), m = 9:
d = 2, n = 81, |N| = 1524096
d = 3, n = 729, |N| = 2304433152
d = 4, n = 6561, |N| = 1548579078144

gap> PATestFunction(simples[4]);
T = A(9), m = 9:
d = 2, n = 81, |N| = 131681894400
d = 3, n = 729, |N| = 71677088759808000
d = 4, n = 6561, |N| = 17340121312772751360000

gap> PATestFunction(simples[5]);
T = A(5), m = 10:
d = 2, n = 100, |N| = 14400
d = 3, n = 1000, |N| = 2592000
d = 4, n = 10000, |N| = 207360000

gap> PATestFunction(simples[6]);
T = PSL(2, 9), m = 10:
d = 2, n = 100, |N| = 1036800
d = 3, n = 1000, |N| = 1119744000
d = 4, n = 10000, |N| = 537477120000

gap> PATestFunction(simples[7]);
T = A(10), m = 10:
d = 2, n = 100, |N| = 13168189440000
d = 3, n = 1000, |N| = 71677088759808000000
d = 4, n = 10000, |N| = 173401213127727513600000000

gap> PATestFunction(simples[8]);
T = L(2, 11), m = 11:
d = 2, n = 121, |N| = 871200
d = 3, n = 1331, |N| = 1724976000
d = 4, n = 14641, |N| = 1517978880000

gap> PATestFunction(simples[9]);
T = M(11), m = 11:
d = 2, n = 121, |N| = 125452800
d = 3, n = 1331, |N| = 2980758528000
d = 4, n = 14641, |N| = 31476810055680000

gap> PATestFunction(simples[10]);
T = A(11), m = 11:
d = 2, n = 121, |N| = 1593350922240000
d = 3, n = 1331, |N| = 95402205139304448000000
d = 4, n = 14641, |N| = 2538767161403058526617600000000

gap> PATestFunction(simples[11]);
T = M(11), m = 12:
d = 2, n = 144, |N| = 125452800
d = 3, n = 1728, |N| = 2980758528000
d = 4, n = 20736, |N| = 31476810055680000

gap> PATestFunction(simples[12]);
T = M(12), m = 12:
d = 2, n = 144, |N| = 18065203200
d = 3, n = 1728, |N| = 5150750736384000
d = 4, n = 20736, |N| = 652703133314580480000

gap> PATestFunction(simples[13]);
T = PSL(2, 11), m = 12:
d = 2, n = 144, |N| = 1742400
d = 3, n = 1728, |N| = 3449952000
d = 4, n = 20736, |N| = 3035957760000

gap> PATestFunction(simples[14]);
T = A(12), m = 12:
d = 2, n = 144, |N| = 229442532802560000
d = 3, n = 1728, |N| = 164855010480718086144000000
d = 4, n = 20736, |N| = 52643875858853821607942553600000000

gap> PATestFunction(simples[15]);
T = L(3, 3), m = 13:
d = 2, n = 169, |N| = 63078912
d = 3, n = 2197, |N| = 1062753509376
d = 4, n = 28561, |N| = 7957898278207488

gap> PATestFunction(simples[16]);
T = A(13), m = 13:
d = 2, n = 169, |N| = 38775788043632640000
d = 3, n = 2197, |N| = 362186458026137635258368000000
d = 4, n = 28561, |N| = 1503561738404723998944447273369600000000

