#include <string>
#include <stdexcept>
#include <iostream>
using namespace std;
class Palindrome
{
public:
    static bool isPalindrome(const string& word)
    {
        string wordrev=word;
        reverse(wordrev.begin(),wordrev.end());
        if(wordrev==word)
        {
            throw true;
        }
            throw false;
    }
};

#ifndef RunTests
int main()
{
    cout << Palindrome::isPalindrome("Deleveled");
}
#endif