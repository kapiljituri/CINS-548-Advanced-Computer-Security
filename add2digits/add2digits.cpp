#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main(int argc,char *argv[]){

  int i=1, a=0;
  string line;
	
	if(argc != 2) {
		cout << "Usage: ./a.out wordlist.txt\n";
		return 0;
	}

  ifstream infile(argv[1]);
  while (std::getline(infile, line))
  {
    for (a=0; a<100; a++){
      if(a<10){
        cout << "0" << a << line << endl;
      } else {
        cout << a << line << endl;
      }
    }

  }

  return 0;
}
