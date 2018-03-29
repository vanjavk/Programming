#include <iostream>
#include <algorithm>
#include <numeric>
using namespace std;

int main()
{
    int A[10];
    for (int i = 0; i < 10; ++i)
        cin >> A[i];
    
    if (all_of(A, A + 10, [](int x){return x != 0;}))
        cout << "all != 0\n";
    if (none_of(A, A + 10, [](int x){return x % 7 == 0;}))
        cout << "none % 7 == 0\n";
    if (any_of(A, A + 10, [](int x){return x < 0;}))
        cout << "any < 0\n";
    cout << count(A, A + 10, 5) << '\n';
    cout << count(A, A + 10, [](int x){return x % 2 == 0;}) << '\n';
    int* p = find(A, A + 10, 5);
    *p = 10;
    int* q = find_if(A, A + 10, [](int x){return x % 2 == 0;});
    cout << A - q << '\n';
    int* s = find_if_not(A, A + 10, [](int x){return x > 0;});
    fill(A, A + 10, 0);
    A[5] = 1;
    A[8] = -1;
    int n = distance(A, unique(A, A + n));
    int m = distance(A, unique(A, A + n, [](int a, int b){return abs(a)==abs(b);}));
    sort(A, A + 10);
    stable_sort(A, A + 10, [](int a, int b){return abs(a)<abs(b);});
    
    // lower_bound
    // upper_bound
    // equal_range
    // binary_search
    
    // merge
    // set_difference
    // set_intersection
    // set_union
    // set_symmetric_difference
    // includes

    // next_permutation
    // prev_permutation

    char K[] = { 'M', 'I', 'S', 'L', 'A' };
    int B[] = { 0, 1, 2, 3, 4 };
    do
    {
        for (int i = 0; i < 5; ++i)
            cout << K[B[i]] << " ";
        cout << '\n';
    } while (next_permutation(B, B + 5));

    // -- numeric --
    // iota
    // accumulate
    int Q[15];
    iota(Q, Q + 15, 0);
}

