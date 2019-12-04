#include <queue>
#include <iostream>
#include <algorithm>
using namespace std;

struct edge
{
    edge(int a, int b, int w) : a(a), b(b), w(w) { }
    int a, b;
    int w;
    bool operator< (const edge& e) const
    {
        return w > e.w;
    }
};

int main()
{
    priority_queue<edge> Q;
    Q.emplace(0, 1, 3);
    Q.emplace(0, 2, 5);
    Q.emplace(0, 3, 1);
    vector<edge> V;
    while (!Q.empty())
    {
        edge n = Q.top();
        cout << n.w << endl;
        V.push_back(n);
        Q.pop();
    }
    sort(V.begin(), V.end());
    for (int i = 0; i < V.size(); ++i)
        cout << V[i].w << endl;
}
