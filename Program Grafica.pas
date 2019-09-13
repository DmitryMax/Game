Uses ABCobjects, GraphABC;
var 
    PlayerG : PictureABC;
    PlayerS : integer;
Procedure KeyD (Key : integer);
  begin
   case Key of
    VK_D:
     begin
     PlayerG.Left:=PlayerG.Left + PlayerS;
     PlayerG.Move();
     end;
     
     VK_A:
     begin
     PlayerG.Left:=PlayerG.Left - PlayerS;
     PlayerG.Move();
     end;
     
     VK_W:
     begin
     PlayerG.Top:=PlayerG.Top - PlayerS;
     PlayerG.Move();
     end;
     
     VK_S:
     begin
     PlayerG.Top:=PlayerG.Top + PlayerS;
     end;
    end;
   end;
Procedure Player (PlayerI:  PictureABC; speed,hp : integer);
   begin
   PlayerI:=PictureABC.Create(10, 100, 'Player3...png');
   PlayerG:=PlayerI;
   PlayerS:=speed;
   end;
   begin
     window.Height:=600;
     window.Width:=900;
     window.Caption:='First Game';
     window.Fill('‘ÓÌ.jpg');
     Player (PlayerG, 10, 100);
     OnKeyDown := KeyD;
   end.