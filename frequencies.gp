P=readvec("Proth.json")[1];
ten(a,b,s)={
  C=0;
  forstep(N=a,b,s,
    c=0;
    forstep(k=1,1200,2,
      foreach(P[k],n,
        if(N<=n&&n<N+s,c+=1)
      )
    );
    print(N,"-",N+s-1," ",c);
    C+=c;
  );
  print("total ",C);
  print();
}
ten(1,10000,1000);
ten(1,100000,10000);
ten(1,1000000,100000);
ten(1000001,2000000,100000);
ten(2000001,3000000,100000);
ten(3000001,3600000,100000);
