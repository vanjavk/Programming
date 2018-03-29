#include <iostream>
#include <utility>
#include <queue>
using namespace std;

int main()
{
    pair<int, int> p;
    p.first = 1;
    p.second = 4;
    queue<pair<int, int> > Q;
    Q.push(p);
    Q.emplace(2, 4);
}
