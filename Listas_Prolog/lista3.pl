%Inicio de teacher.pl
c(F,L,C,D). 
teacher(L) :- L = [ c(carlos, L1, C1, D1), c(bruno, L2, C2, D2), c(daniel, L3, C3, D3), c(hendrik, L4, C4, D4), c(beatriz, L5, C5, D5) ], 
    member( c(_, carvalho, _, _), L), 
    member( c(_, prado, _, _), L), 
    member( c(_, estombelo, _, _), L), 
    member( c(_, macedo, _, _), L), 
    member( c(_, dantas, _, _), L), 
    member( c(_, _, imagens, _), L), 
    member( c(_, _, cg, _), L), 
    member( c(_, _, ia, _), L), 
    member( c(_, _, fpga, _), L),
    member( c(_, _, sinais, _), L), 
    member( c(_, _, _, cuda), L), 
    member( c(_, _, _, haskell), L), 
    member( c(_, _, _, python), L),
    member( c(_, _, _, opencl), L), 
    member( c(_, _, _, cpp), L), 

    not(member( c(carlos, _, fpga, _), L)), 
    not(member( c(carlos, _, _, cpp), L)),
    member( c(_, _, fpga, cpp), L),
  
    not(member( c(beatriz, macedo, sinais, _), L)),

    member( c(_, carvalho, cg, _), L),

    not(member( c(daniel, estombelo, _, cuda), L)),
    member( c(daniel, _, imagens, _), L),

    member( c(hendrik, _, _, haskell), L),
    not(member( c(hendrik, _, sinais, _), L)),
    not(member( c(carlos, macedo, _, _), L)),

    member( c(bruno, prado, _, _), L),
    not(member( c(bruno, _, _, cuda), L)),
    not(member( c(_, prado, _, cuda), L)),

    not(member( c(beatriz, estombelo, _, _), L)),
    member( c(beatriz, _, _, python), L),
    not(member( c(beatriz, _, ia, _), L)),

    not(member( c(carlos, dantas, _, _), L)),
    member( c(_, dantas, _, opencl), L),
    not(member( c(_, dantas, ia, _), L)),

    true, !.
%Fim de teacher.pl
