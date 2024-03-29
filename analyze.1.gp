P=readvec("Proth.json")[1];
{
  forstep(k=1,#P,2,
    cnt=Vec(0,22);
    cntn=Vec(0,22);
    foreach(P[k],m,if(#binary(m)<=22,cnt[#binary(m)]=1;cntn[#binary(m)]+=1));
    if(vecsum(cnt)==22,print1(k,":");
      for(i=1,22,print1(" ",cntn[i]*100\i));
      print());
  );
}
