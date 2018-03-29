#include <iostream>
#include <sstream>
using namespace std;

void a()
{
    int t;
    cin >> t;
    while (t--)
    {
        int a, b;
        cin >> a >> b;
        cout << a + b << '\n';
        if (t) cout << '\n';
    }
}

void b()
{
    int t;
    cin >> t;
    for (int T = 1; T <= t; ++T)
    {
        int a, b;
        cin >> a >> b;
        cout << "Case " << T << ": " << a + b << '\n';
        if (T != t) cout << '\n';
    }
}

void c()
{
    int t = 1, a, b;
    while (cin >> a >> b, a || b)
    {
        if (t != 1) cout << '\n';
        cout << "Case " << t++ << ": " << a + b << '\n';
    }
}

void d()
{
    int t = 1, a, b;
    while (cin >> a >> b)
    {
        if (t != 1) cout << '\n';
        cout << "Case " << t++ << ": " << a + b << '\n';
    }
}

void e()
{
    string s;
    while (getline(cin, s), s != "END")
    {
        istringstream iss(s);
        int sum = 0, a;
        while (iss >> a)
            sum += a;
        cout << sum << '\n';        
    }
}

void f()
{
    string s;
    while (getline(cin, s), cin && !s.empty())
    {
        istringstream iss(s);
        int sum = 0, a;
        while (iss >> a)
            sum += a;
        cout << sum << '\n';
    }
}

void g()
{
    int t;
    cin >> t;
    cin.ignore();
    while (t--)
    {
        string s;
        getline(cin, s);
        istringstream iss(s);
        int sum = 0, a;
        while (iss >> a)
            sum += a;
        cout << sum << '\n';
    }
}

void h()
{
    int t;
    cin >> t;
    cin.ignore();
    while (t--)
    {
        cin.ignore();
        string s;
        getline(cin, s);
        istringstream iss(s);
        int sum = 0, a;
        while (iss >> a)
            sum += a;
        cout << sum << '\n';
    }
}

int main()
{
    a();
    b();
    c();
    d();
    e();
    f();
    g();
    h();
}
