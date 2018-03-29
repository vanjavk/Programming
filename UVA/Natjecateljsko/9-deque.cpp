#include <deque>
#include <iostream>
using namespace std;

int main()
{
    deque<int> D;
    int n;
    cin >> n;
    for (int i = 0; i < n; ++i)
    {
        if (i % 2 == 0)
            D.push_front(i);
        else
            D.push_back(i);
    }
    while (!D.empty())
    {
        cout << D.front() << ' '; // back
        D.pop_front(); // pop_back
    }
}
