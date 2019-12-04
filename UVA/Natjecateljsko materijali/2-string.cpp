#include <iostream>
#include <string>
using namespace std;

int main()
{
    string s(10, '.');
    cout << s << '\n';
    s[1] = 'x';
    s.at(1) = 'x';
    cout << s << '\n';
    s.front() = 'p';
    s.back() = 'q';
    cout << s << '\n';
    for (int i = 0; i < s.size(); ++i)
        if (i % 2 == 0)
            s[i] = '2';
    cout << s << '\n';
    string z = ";;";
    s += z;
    cout << s << '\n';
    cout << s.substr(3) << '\n';
    cout << s.substr(3, 3) << '\n';
    s.assign(5, 'o');
    s.resize(10, 'x');
    cout << s << '\n';
    s.clear();
    cout << s << '\n';
    s = z + "aaa";
    cout << s << '\n';
    s = "34";
    cout << s << '\n';
    int k = stoi(s);
    k += 2;
    cout << to_string(k) << '\n';
    s = "34.45";
    double d = stod(s);
    d *= 2;
    cout << d << '\n';
    int a, b;
    size_t j = s.find('.');
    cout << j << '\n';
    a = stoi(s.substr(0, j));
    b = stoi(s.substr(j + 1));
    cout << a << " " << b << '\n';
    for (char c : s)
        if (c != '.')
            cout << c;
    cout << '\n';
    s = "aAbcjJjJj";
    cout << s << '\n';
    size_t in = s.find("JjJ");
    if (in != s.npos)
        s.replace(in, 3, "XXX");
    cout << s << '\n';
    s = "aAbcjJjJj";
    cout << s << '\n';
    size_t jn = s.find_first_of("Jj");
    if (jn != s.npos)
        s[jn] = 'X';
    cout << s << '\n';
    s = "aaAaaaAAaXXXa";
    size_t kn = s.find_first_not_of("aA");
    if (kn != s.npos)
        s[kn] = 'Q';
    cout << s << '\n';
    // rfind
    // find_last_of
    // find_last_not_of
}
