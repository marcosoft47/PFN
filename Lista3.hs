{-
------1-----
---a---
abcd

---b---
\q.(\i.q)

---c---
(\x.(\y.(\z.xz))) (yz)

------2-----
---a---
\s.sz\q.sq
    ^
z está livre
\s.sz\q.sq
   ^    ^^
Os dois s's estão ligados ao \s
O q está ligado ao \q

---b---
(\s.sz)\q.w\w.wqzs
     ^    ^     ^^
Os dois z's, w, q e s estão livres.

(\s.sz)\q.w\w.wqzs
    ^         ^^
O s dentro dos parênteses está ligado ao \s
O w está ligado ao \w


---c---
(\s.s)(\q.qs)
           ^
O s está livre

(\s.s)(\q.qs)
    ^     ^
O s está ligado ao \s
o q está ligado ao \q

---d---
\z.((\s.sq)(\q.qz)) \z.zz
        ^
O q está livre

\z.((\s.sq)(\q.qz)) \z.zz
        ^      ^^      ^^
O s está ligado ao \s
o q está ligado ao \q
o primeiro z está ligado ao primeiro \z
os dois últimos z's estão ligado ao segundo \z 


-----3-----
---a---
(\z.z)(\q.qq)(\s.sa)
(\q.qq)(\s.sa)
(\s.sa)(\s.sa)
(\s.sa)a
aa


---b---
(\s.\q.sqq)(\a.a)b
(\q.(\a.a)qq)b
(\q.qq)b
bb

---c---
(\s.\q.sqq)(\x.x)c
(\q.(\x.x)qq)c
(\q.qq)c
cc

---d---
((\s.ss)(\q.q))(\r.r)
((\q.q)(\q.q))(\r.r)
(\q.q)(\r.r)
(\r.r)

-----4-----
---a---
(\x.x) 5
5

---b---
(\x.x + 10) 42
42 + 10
52

---c---
(\f.f(f 10)) (\x.x + 2)
(\x.x+2) ((\x.x + 2) 10)
(\x.x+2) (10 + 2)
(\x.x+2) 12
12 + 2
14

---d---
(\f.f) (\x.x) 51
(\x.x) 51
51


-----5-----
(\m.\n.\f.\x.mf(nfx))(\c.\d.c(cd))(\a.\b.ab)
(\n.\f.\x.(\c.\d.c(cd))f(nfx))(\a.\b.ab)
(\n.\f.\x.(\d.f(fd))(nfx))(\a.\b.ab)
(\n.\f.\x.(\f(fnfx)))(\a.\b.ab)
(\f.\x.(\f(f(\a.\b.ab)fx)))
(\f.\x.(\f(f(\b.fb)x)))
(\f.\x.(\f.ffx)))
-}