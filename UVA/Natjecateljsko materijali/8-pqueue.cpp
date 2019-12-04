#include <queue>
#include <iostream>
#include <utility>
using namespace std;

struct cmp
{
    bool operator()(string& a, string& b)
    {
        if (a.size() == b.size())
            return a > b;
        return a.size() > b.size();
    }
};

int main()
{
    priority_queue<string, vector<string>, cmp> Q;
    int n;
    cin >> n;
    for (int i = 0; i < n; ++i)
    {
        string s;
        cin >> s;
        Q.push(s);
    }
    while (!Q.empty())
    {
        cout << Q.top() << ' ';
        Q.pop();
    }
}
