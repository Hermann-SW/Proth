P=readvec("Proth.json")[1];
f=fileopen("Proth.abc","w");
filewrite(f,"ABC $a*$b^$c+1");
{
  forstep(k=1,1200,2,
    foreach(P[k],m,
      filewrite(f,Str(k," 2 ",m))
    )
  );
}
fileclose(f);
