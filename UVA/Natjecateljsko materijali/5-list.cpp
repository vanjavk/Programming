#include <list>
#include <iostream>
using namespace std;

int main()
{
    list<int> L;
    int n;
    cin >> n;
    for (int i = 0; i < n; ++i)
    {
        int a;
        cin >> a;
        if (i % 2 == 0)
            L.push_back(a);
        else
            L.push_front(a);
    }
    int k;
    cin >> k;
    for (auto it = L.begin(); it != L.end();)
    {
        if (*it == k)
            it = L.erase(it);
        else
            ++it;
    }
    for (int k : L)
        cout << k << ' ';
    cout << '\n';
}
