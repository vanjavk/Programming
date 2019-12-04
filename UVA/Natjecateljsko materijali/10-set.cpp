#include <set>
#include <iostream>
using namespace std;

int main()
{
    int n;
    cin >> n;
    set<int> S;
    for (int i = 0; i < n; ++i)
    {
        int x;
        cin >> x;
        auto p = S.insert(x);
        if (p.second)
            cout << "new!" << endl;
    }
    int x;
    cin >> x;
    auto it = S.find(x);
    if (it != S.end())
        cout << "found!" << endl;
    else
        cout << "not found" << endl;
}
