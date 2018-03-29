#include <iostream>
#include <queue>
#include <utility>
#include <tuple>
#include <algorithm>
using namespace std;

int dx[8] = { 2, 2, -2, -2, 1, -1, 1, -1 };
int dy[8] = { -1, 1, 1, -1, 2, -2, -2, 2 };

int main()
{
    int a, b, c, d;
    cin >> a >> b >> c >> d;
    queue<pair<int, int> > Q;
    Q.emplace(a, b);
    int A[8][8];
    fill((int*)A, (int*)A + 8 * 8, -1);
    A[a][b] = 0;
    while (!Q.empty())
    {
        int r, s;
        tie(r, s) = Q.front();
        Q.pop();
        for (int k = 0; k < 8; ++k)
        {
            int rr = r + dy[k];
            int ss = s + dx[k];
            if (rr >= 0 && ss >= 0 && rr < 8 && ss < 8 && A[rr][ss] == -1)
            {
                A[rr][ss] = A[r][s] + 1;
                Q.emplace(rr, ss);
            }
        }
    }
    for (int y = 0; y < 8; ++y)
    {
        for (int x = 0; x < 8; ++x)
            cout << A[y][x] << ' ';
        cout << endl;
    }
    cout << A[c][d] << endl;
}
