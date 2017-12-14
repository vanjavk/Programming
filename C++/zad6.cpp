#include <iostream>
using namespace std;

int main() {
	int n,br;
	cin >> n >> br;
	int sr; //sredina
	sr=n/2+1;
	//cout << sr;
	int baza=0;
	int odmak=0;
	int x=0,y=0;
	for (int i=0;i<sr;i++)
	{
		if (br<=(2*i+1)*(2*i+1))
		{	
			baza=(2*i+1);
			odmak=i;
			break;
			
		}
	}
	int razlika=(baza*baza)-((baza-1)*(baza-1));
	int cetvrt=odmak*2;
	int baza2=baza*baza;
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
	cout << endl << "odmak " << odmak << " sredina " << sr<< " cetvrt " << cetvrt<< " baza " << baza;
}