#include <map>
#include <unordered_map>
#include <iostream>
using namespace std;

int main()
{
    map<string, int> M; // unordered_map
    int n;
    cin >> n;
    for (int i = 0; i < n; ++i)
    {
        string s;
        int k;
        cin >> s >> k;
        M[s] = k;
    }
    string s;
    cin >> s;
    cout << M[s] << endl;
}
