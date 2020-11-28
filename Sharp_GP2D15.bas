'programma con sensori Sharp GP2D15 e subroutines 21/10/11


gosub fermo
pause 3000
gosub destra 
pause 2500
do
 if pin3=0 then
  gosub avanti
 else
  gosub fermo
  pause 1000
  gosub destra
  pause 400
  gosub sinistra 
  pause 900
  gosub destra
  pause 1100
 end if 
loop

'subroutines motori 

avanti:
 high 1 low 0 
 high 2 low 4
return

indietro:
 high 0 low 1
 high 4 low 2
return

destra: 
 high 0 low 1 
 high 2 low 4
return

sinistra:
 high 1 low 0
 high 4 low 2
return

fermo:
 low 1 low 0 
 low 2 low 4
return
