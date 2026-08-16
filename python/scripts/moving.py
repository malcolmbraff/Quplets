import numpy as np
from math import pi, gcd, cos

def crests(n,d,k,M=None):
    if M is None: M=200*d
    x=(np.arange(M)+0.5)/M
    G=k*d*np.sin(2*pi*d*x)+(1-k)*n*np.sin(2*pi*n*x)
    s=np.sign(G); idx=np.where(s[:-1]*s[1:]<0)[0]
    roots=[]
    for j in idx:
        a,b=x[j],x[j+1]
        Ga=G[j]
        for _ in range(60):
            m=0.5*(a+b)
            Gm=k*d*np.sin(2*pi*d*m)+(1-k)*n*np.sin(2*pi*n*m)
            if Ga*Gm<=0: b=m
            else: a,Ga=m,Gm
        r=0.5*(a+b)
        H=k*d*d*np.cos(2*pi*d*r)+(1-k)*n*n*np.cos(2*pi*n*r)
        if H<0:  # crest (sign convention: paper's H = -(2pi)^2 * this)
            roots.append(r)
    return np.array(roots)

def split(n,d,k):
    r=crests(n,d,k); half=1/(2*d)
    anc=[];una=[]
    for x in r:
        da=min(abs(x-np.round(x*n)/n),1-abs(x-np.round(x*n)/n))
        (anc if da<half else una).append(x)
    F=lambda x: k*np.cos(2*pi*d*x)+(1-k)*np.cos(2*pi*n*x)
    return (min(F(np.array(anc))) if anc else None,
            max(F(np.array(una))) if una else None, len(anc), len(una))

# sign convention check: crest means F''<0 i.e. k d^2 cos(2pi d x)+(1-k)n^2 cos(2pi n x) > 0
# fix: recompute with correct sign
def crests_ok(n,d,k,M=None):
    if M is None: M=200*d
    x=(np.arange(M)+0.5)/M
    G=k*d*np.sin(2*pi*d*x)+(1-k)*n*np.sin(2*pi*n*x)
    s=np.sign(G); idx=np.where(s[:-1]*s[1:]<0)[0]
    roots=[]
    for j in idx:
        a,b=x[j],x[j+1]; Ga=G[j]
        for _ in range(60):
            m=0.5*(a+b)
            Gm=k*d*np.sin(2*pi*d*m)+(1-k)*n*np.sin(2*pi*n*m)
            if Ga*Gm<=0: b=m
            else: a,Ga=m,Gm
        r=0.5*(a+b)
        C=k*d*d*np.cos(2*pi*d*r)+(1-k)*n*n*np.cos(2*pi*n*r)
        if C>0: roots.append(r)   # F'' = -(2pi)^2 C < 0  <=> C>0
    return np.array(roots)

def split_ok(n,d,k):
    r=crests_ok(n,d,k); half=1/(2*d)
    anc=[];una=[]
    for x in r:
        m=np.round(x*n)/n
        da=min(abs(x-m),1-abs(x-m))
        (anc if da<half else una).append(x)
    F=lambda z: k*np.cos(2*pi*d*z)+(1-k)*np.cos(2*pi*n*z)
    A=min(F(np.array(anc))) if anc else None
    U=max(F(np.array(una))) if una else None
    return A,U,len(anc),len(una)

print("pair       k*      minA(k*)   D(k*)   pointwise margin")
firsts={(3,70):0.004395,(5,19):0.114776,(7,17):0.155077,(9,20):0.190365,(11,30):0.142708,(3,100):0.002160}
for (n,d),ks in firsts.items():
    A,U,na,nu=split_ok(n,d,ks)
    print(f"({n},{d})  {ks:.6f}  {A:.6f}  ", end="")
    # D(k*)
    s=ks*d/((1-ks)*n)
    D=(1-ks)*np.sqrt((1-(n*n)/(d*d))*(1-s*s))
    print(f"{D:.6f}   {A-D:+.6f}   crests {na}+{nu}")

print()
print("Global ranking scan (min over k of minA-maxU):")
for (n,d) in [(3,70),(3,100),(5,19),(7,17),(9,20),(11,30)]:
    worst=1e9; kw=None
    for k in np.linspace(0.002,0.998,499):
        A,U,na,nu=split_ok(n,d,k)
        if U is not None and A is not None:
            if A-U<worst: worst,kw=A-U,k
    print(f"({n},{d}): min margin {worst:+.5f} at k={kw:.4f}")