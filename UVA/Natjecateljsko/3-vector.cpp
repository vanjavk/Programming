#include <iostream>
#include <vector>
using namespace std;

int A[10];

int main()
{
    int n;
    cin >> n;
    vector<int> V(n);
    for (int i = 0; i < n; ++i)
        cin >> V[i];
    for (int k : V)
        cout << k << " ";
    cout << '\n';
    V.clear();
    for (int i = 0; i < n; ++i)
        V.push_back(i);
    for (auto i = V.begin(); i != V.end(); ++i)
        cout << *i << " ";
    cout << '\n';
}
