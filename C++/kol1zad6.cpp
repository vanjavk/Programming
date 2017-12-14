#include <iostream>
using namespace std;

int main() {
	int n, br;
	cin >> n >> br;
	//cout << n << ' '<< br;
	int sr=n/2+1; //sredina
	//cout << sr;
	int baza=0,odmak=0,x=0,y=0,rez=0;
	unsigned rez2=0;
	for (int i=0;i<sr;i++)
	{	
		rez=(2*i+1);
		rez2=rez*rez;
		if (br<=rez2)
		{	
			baza=rez;
			odmak=i;
			break;
			
		}
	}
	int cetvrt=odmak*2;
	unsigned baza2=baza*baza;
	if ((baza2)==br){
		x=sr+odmak;
		y=sr+odmak;
	}
	else if ((baza2>br)&&(baza2-cetvrt<br)){
		x=sr+odmak;
		y=sr+odmak;
		y-=(baza2-br);
	}
	else if (baza2-cetvrt==br){
		x=sr+odmak;
		y=sr-odmak;
	}
	else if ((baza2-cetvrt>br)&&(baza2-cetvrt*2<br)){
		x=sr+odmak;
		y=sr-odmak;
		x-=(baza2-cetvrt-br);
	}
	else if (baza2-cetvrt*2==br){
		x=sr-odmak;
		y=sr-odmak;
	}
	else if ((baza2-cetvrt*2>br)&&(baza2-cetvrt*3<br)){
		x=sr-odmak;
		y=sr-odmak;
		y+=(baza2-cetvrt*2-br);
	}
	else if (baza2-cetvrt*3==br){
		x=sr-odmak;
		y=sr+odmak;
	}
	else {
		x=sr-odmak;
		y=sr+odmak;
		x+=(baza2-cetvrt*3-br);
	}
	cout << x << ' '<< y;
	//cout << endl << "odmak " << odmak << " sredina " << sr<< " cetvrt " << cetvrt<< " baza " << baza2;
	return 0;
	
}
