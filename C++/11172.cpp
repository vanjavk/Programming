#include <iostream>
using namespace std;

int main (){
	int n;
	cin >> n;
	for (int i=0;i<n;i++)
	{
		int a[2];
		cin >> a[0] >> a[1];
		if (a[0]<a[1])
		{
			cout << "<\n";
		}else if(a[0]>a[1])
		{
			cout << ">\n";
		}else
		{
			cout << "=\n";
		}
	}
	return 0;
}