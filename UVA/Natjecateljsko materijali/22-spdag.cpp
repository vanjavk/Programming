#include <iostream>
#include <stack>
#include <vector>
#include <utility>
#include <limits>
using namespace std;

typedef vector<int> vi;
typedef pair<int, int> ii;
typedef vector<ii> vii;
typedef vector<vii> vvii;
typedef vector<bool> vb;
typedef stack<int> si;

void topsort(int x, si& s, vb& b, vvii& g)
{
    for (ii& p : g[x])
        if (!b[p.first])
            topsort(p.first, s, b, g);
    b[x] = true;
    s.push(x);
}

int main()
{
    int n;
    cin >> n;
    int m;
    cin >> m;
    vvii G(n);
    for (int i = 0; i < m; ++i)
    {
        int a, b, w;
        cin >> a >> b >> w;
        G[a].emplace_back(b, w);
    }
    int x;
    cin >> x;
    vb B(n, false);
    si S;
    topsort(x, S, B, G);
    vi D(n, numeric_limits<int>::max()); // 0
    D[x] = 0;
    while (!S.empty())
    {
        int k = S.top();
        S.pop();
        for (ii& p : G[k])
            if (D[k] + p.second < D[p.first]) // >
                D[p.first] = D[k] + p.second;
    }
    for (int i = 0; i < D.size(); ++i)
        cout << x << " " << i << ": " << D[i] << endl;
}
