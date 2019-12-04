#include <queue>
#include <iostream>
#include <vector>
#include <utility>
#include <functional>
using namespace std;

typedef pair<int, int> ii;
typedef vector<ii> vii;
typedef vector<vii> vvii;

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
        G[a].emplace_back(w, b);
        G[b].emplace_back(w, a);
    }
    priority_queue<ii, vii, greater<ii> > Q;
    vector<bool> B(n, false);
    B[0] = true;
    for (int i = 0; i < G[0].size(); ++i)
        Q.push(G[0][i]);

    int weight = 0;
    while (!Q.empty())
    {
        ii p = Q.top();
        Q.pop();
        if (!B[p.second])
        {
            weight += p.first;
            B[p.second] = true;
            for (int i = 0; i < G[p.second].size(); ++i)
                if (!B[G[p.second][i].second])
                    Q.push(G[p.second][i]);
        }
    }
    cout << weight << endl;
}
