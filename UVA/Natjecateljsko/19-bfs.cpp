#include <iostream>
#include <vector>
#include <queue>
#include <tuple>
using namespace std;

typedef vector<int> vi;
typedef vector<vi> vvi;

int dx[4] = {0, 0, 1, -1};
int dy[4] = {1, -1, 0, 0};

int main()
{
    int n, m;
    cin >> n >> m;
    vvi G(n, vi(m));
    for (int y = 0; y < n; ++y)
        for (int x = 0; x < m; ++x)
            cin >> G[y][x];
    int a, b, c;
    cin >> a >> b >> c;
    queue<pair<int, int> > Q;
    Q.emplace(a, b);
    int q = G[a][b];
    G[a][b] = c;
    while (!Q.empty())
    {
        int y, x;
        tie(y, x) = Q.front();
        Q.pop();
        for (int k = 0; k < 4; ++k)
        {
            int yy = y + dy[k];
            int xx = x + dx[k];
            if (yy >= 0 && xx >= 0 && yy < n && xx < m && G[yy][xx] == q)
                G[yy][xx] = c, Q.emplace(yy, xx);
        }
    }
    for (int y = 0; y < n; ++y)
    {
        for (int x = 0; x < m; ++x)
            cout << G[y][x] << " ";
        cout << endl;
    }
}
