#include <queue>
#include <iostream>
using namespace std;

int main()
{
    queue<int> Q;
    int n;
    cin >> n;
    for (int i = 0; i < n; ++i)
        Q.push(i);
    while (!Q.empty())
    {
        cout << Q.front() << ' ';
        Q.pop();
    }
}
