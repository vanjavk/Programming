#include <array>
#include <iostream>
using namespace std;

int main()
{
    array<string, 3> A;
    for (int i = 0; i < 3; ++i)
        cin >> A[i];

    for (string& s : A)
        cout << s << '\n';
}
