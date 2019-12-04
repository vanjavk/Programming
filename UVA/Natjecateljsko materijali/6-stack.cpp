#include <stack>
#include <iostream>
using namespace std;

int main()
{
    int n;
    cin >> n;
    stack<int> S;
    for (int i = 0; i < n; ++i)
    {
        int x;
        cin >> x;
        S.push(x);
    }
    while (!S.empty())
    {
        cout << S.top() << ' ';
        S.pop();
    }
}
