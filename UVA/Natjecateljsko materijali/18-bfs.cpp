#include <iostream>
#include <vector>
#include <queue>
using namespace std;

typedef vector<int> vi;
typedef vector<vi> vvi;

int main()
{
    int n;
    cin >> n;
    int m;
    cin >> m;
    vvi G(n);
    for (int i = 0; i < m; ++i)
    {
        int a, b;
        cin >> a >> b;
        G[a].push_back(b);
        G[b].push_back(a);
    }
    vi A(n, 0);
    int c = 0;
    for (int i = 0; i < n; ++i)
    {
        if (A[i] == 0)
        {
            ++c;
            queue<int> Q;
            Q.push(i);
            A[i] = 1;
            while (!Q.empty())
            {
                int k = Q.front();
                Q.pop();
                for (int s : G[k])
                    if (A[s] == 0)
                        Q.push(s), A[s] = 1;
            }
        }
    }
    cout << c << endl;
}
