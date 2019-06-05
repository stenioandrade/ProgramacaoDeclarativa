import Data.Char

soma10 x = x+10
apllyTwice f x = f(f x)
soma x y =x+y

zipWith' f [] [] = error "empty list"
zipWith' f [] (y:ys) = []
zipWith' f (x:xs) [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f (xs) (ys)

map' f [] = error "empty list"
map' f (x:xs) = map' f (xs)

filter' f [] = error "empty list"
filter' f(x:xs) = if(f x ==True) then (x : filter' f (xs)) else (filter' f (xs))

elem' x
	|x>=32 && x<=90 = True
	|otherwise = error "Nao pertence"

encodeN x c
	|elem' x = if (x+c) <= 90 then x+c else ((x+c) - 90) + 31
	|otherwise = error "encode error"

decodeN x c
	|elem' x = if (x-c)>=32 then x-c else (x-c) + 59
	|otherwise = error "decode error"
	
endecN x c = if(decodeN (encodeN x c ) c) == x then x else error "N foi :/"

--(\x -> mod x 3) 7
--1
mul3 x = 3*x
--soma10 $ mul3 1
--13

--Só funciona para letras maiúsculas
encode [] = []
encode (x:xs) = encodeC x : encode xs

decode [] = []
decode (x:xs) = decodeC x : decode xs

encodeC x = chr(encodeN(ord(x))5)
decodeC x = chr(decodeN(ord(x))5)

--INICIO DO haskeamento
tdecodeC x t = chr(decodeN(ord(x))t)

tdecode [] t = []
tdecode (x:xs) t = tdecodeC x t : tdecode xs t

hask [] maxkey = []
hask (x:xs) 0 = tdecode (x:xs) 0
hask (x:xs) maxkey = (tdecode (x:xs) maxkey) ++ "_____" ++ (hask (x:xs) (maxkey - 1) )
--putStrLn()
--FIM DO haskeamento

msg_raul = "HFNT%J%MZRUWJ#%FRTW%JYJWST"

msg_caio = "FHJQJWFHFT"

msg_netto1 = " Y&,8\"8%\"/*Y+6,8-\"/1\" \"*8Y,8 ,+'2+1,8)$Z1D81Y)8.2\"8%2*#/\"68C8 Y&,8E8 Y&,8U8%\"/*Y+&,"
msg_netto2 = "/Y2)8UU8/Y!2D81Y)8.2\"D80\"80,*\"+1\"80\"88/Y2)8U8/Y!28\"8/Y!28U8/Y2)D8/Y2)8\"8/Y!28-\"/1\" \"*8Y,8 ,+'2+1,8/Y!2/Y2)"
msg_netto3 = "0%Y2+8TTTTTTTTTTTTTTTTTTTTTT80 %\"&+\"/*Y+D80\"28)&5,D8-Y2),8/Y&78JHIMFJ"
msg_netto4 = "/Y2)8/Y&78U8 YZ\"),8$/Y+!\"D8-&8!,08Z/,1%\"/D8Z\"Z\"8 Y12YZY8\"8#2*Y82*8Z\" (8/Y2)8+21\"))YU8 YZ\"),8 2/1,D80,8Z\"Z\"8!28#/\"&D80,8#Y)Y8!\"804&#1D8%Y (Y1/2 (8Z)YZ)YZ)YD8 %,/Y8-/Y8Y/.2&1\"12/Y"
msg_netto5 = "/Y!28C8J8Y*&$Y08U8/Y!281/&01\"8C8#\")&781Y)8.2\"8/Y!281/&01\"8-,/.2\"8+Y,8+Y*,/Y8*Y08/Y!28#\")&78-.81\"*8Y*&$Y8*2)%\"/D8*Y08\"8Y$,/Y8.2Y)8,8*\")%,/8/Y!2"
msg_netto6 = " Y&,8\"8,80,)8+Y0 \"+!,D8+Y,8.2\"&*,28Y&+!YD8*Y083Y&8.2\"&*Y/"

msg_marcilio = "J?AO?UH;UGCHB;UG;I"

msg_paulo = "ZFUZ!BJN!QJEXTNED!MONYQHW*"

msg_gabriel1 = "-*/*7/629<*;?/*4+@+"
msg_gabriel2 = "(.*3(.&%*%2*1-47%6:*%*3,*3-&7.&"
msg_gabriel3 = "C2F=1C25F1C25F1C2F=13F81E6=212KF="
msg_gabriel4 = "=:GB6CND5:5B6>H5ADB7G69D59D5FJ:586>D"
msg_gabriel5 = "HXCSUHFLVRCGHCXPCFRPSXWDGRUCQRYR"

msg_hermanyo = "UTSYJNWT%SJYT%IT%YNUT%QLGY%FUTSYF%UFWF%IO%F FYFW%SZQQ"

msg_stenio1 = "FQLT%IJ%JWWFIT%SFT%JXYF%HJWYT"
msg_stenio2 = "UFWFGJSX% H%RJ%MFXHPJTZ"
msg_stenio3 = "NWNSJZ% THJ%SFT%XFGJ%SJR%JZ"

msg_pablo1 = "YTIT%RZSIT% FN%UFXXFW%JR%IJHQFWFYN F"
msg_pablo2 = "&T\"VP&/M/ TT<'X\""
msg_pablo3 = "!X\"WP/!) WT&/'T/(#&\"#)/'#V&P/S#/!T)/$PX=/P/!X\"WP/T\"(TPSP/UXR#)/P/'T&/!X\"WP/!PT/T/!T)/$PX/P#/!T'!#/(T!$#/!T)/VT\"&#="
msg_pablo4 = "P%+ ZOTL+P#$L\"+\"Z%MLYOZ7+XLY$LYOZ7$\"LQTNLYOZ+XL#+$Z+L!%T+YL+L%WL+OP+ O+NZX+QZXP+P+<@+QTWSZ#+ \"L+N\"TL\"+&Z%+ POT\"+%XL+LU%OL+OP+@+\"PLT#+ P##ZLW+, PWZ+LXZ\"+OP+OP%#,+!%PX+$T&P\"+OP%#+LMPYNZP+!%PX+YLZ+$T&P\"+&LT+WP&L\"+NS%XMZ+YL+#LTOL,,+P%+#PT+ZYOP+&N#+XZ\"LX9"

msg_weslan = "RMOUX,PQYMU%"
