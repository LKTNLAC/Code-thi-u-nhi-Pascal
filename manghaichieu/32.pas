program bai31;
var a:array[0..101,0..101] of integer;
    b:array[1..10000] of longint;
    m,n:integer;
procedure input;
var i,j:longint;
begin
   readln(m,n);
   for i:= 1 to m do
   begin
      for j:=1 to n  do read(a[i,j]);
      readln;
   end;
end;
procedure output;
var i,j,k,di,dj,tam:longint;
begin
   k:=0;
   for i:=1 to m do
      for j:=1 to n do
      begin
         k:=k+1;
         b[k]:=a[i,j];
      end;
   for i:=1 to k-1 do
      for j:=i+1 to k do
         if b[i]<b[j] then
         begin
            tam:=b[i];
            b[i]:=b[j];
            b[j]:=tam;
         end;
      fillchar(a,sizeof(a),1);
      for i:=1 to m do
         for j:=1 to n do a[i,j]:=0;
      i:=1;
      j:=0;
      di:=0;
      dj:=1;
      for k:=1 to m*n do
   begin
      if(a[i+di,j+dj]<>0) then
      begin
         if (di=0)and(dj=1) then
            begin
               di:=1;
               dj:=0;
            end
            else if(di=1)and(dj=0) then
               begin
                  di:=0;
                  dj:=-1;
               end
               else if(di=0)and(dj=-1) then
                  begin
                     di:=-1;
                     dj:=0;
               end
               else if(di=-1)and(dj=0) then
                  begin
                     di:=0;
                     dj:=1;
                  end;
      end;
      i:=i+di;
      j:=j+dj;
      a[i,j]:=b[k];
   end;
   for i:=1 to m do
   begin
      for j:=1 to n do write(a[i,j]:3);
      writeln;
   end;
end;
begin
   input;
   output;
end.
