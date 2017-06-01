#include<iostream>
#include<stdio.h>
#include<string>
#include<fstream>
#include<conio.h>
#include<stdlib.h>
#include<ctime>
#include<md5.h>
#include<bitset>
#include"base64.h"
#include<sha1.h>
#include<stdlib.h>
using namespace std;

class pass
{
    int size ;
    public:
    void length();
    void w_pass();
    void r_pass();
    void md5_encrypt();
    void bin_encrypt();
    void base_encrypt();
    void morse_encrypt();
    void sha1_encrypt();
    void decimal_encrypt();
    void hex_encrypt();
    void caesar_encrypt();
};
 void pass ::length()
 {
     cout<<"enter the length  of your password " ;
     cin>>size;
 }
 void pass :: w_pass()
 {
     char p[size];
     ofstream afile("pass.dat",ios::binary | ios::out) ;
     cout<<"enter your password ";
     for(int i=0; i<size ; i++)
     {

         p[i] = getch();
         cout<<"*";
         afile<<p[i] ;

     }
     afile.close();

     cout<<"\n";
 }
 void pass ::r_pass()
 {
     ofstream  bfile("pass.dat",ios::binary | ios::out | ios::app);
     srand( (unsigned)time( NULL ) ); //set the seed

     char s[5];
     static const char alphanum[] =
        "0123456789"
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        "abcdefghijklmnopqrstuvwxyz"
        "!@#$%^&*";

    for (int i = 0; i < 5; ++i) {
        s[i] = alphanum[rand() % (sizeof(alphanum) - 1)];
        bfile<<s[i];
    }

    s[5] = 0;
    bfile.close();
 }
 void pass ::md5_encrypt()
 {
     char md5_gen[100];
     char md5_fin[32];

     fstream cfile ;
     cfile.open("pass.dat",ios::binary | ios::in |ios::out);
     cfile >> md5_gen ;
     MD5 md5 ;
     ofstream dfile ;
     dfile.open("pass.dat", ios::binary |ios::trunc);
     dfile<<md5.digestString( md5_gen )  ;

      dfile.close();
      cfile.close();
     }

void pass ::bin_encrypt()
{
    ofstream efile("bin.dat");
    ifstream ffile("pass.dat");
    string str ;
    ffile >>str ;
    string str1 = str.substr(0,4);
for (std::size_t i = 0; i < str1.size(); ++i)
  {
      efile << bitset<8>(str1.c_str()[i]) ;
  }

    efile.close();
    ffile.close();
}
void pass ::base_encrypt()
{
     ofstream efile("base.dat");
    ifstream ffile("pass.dat");
    string base ;
    ffile >>base ;
    string base1 = base.substr(4,4);


    efile.close();
    ffile.close();

}
void pass ::morse_encrypt()
{
}

void pass ::sha1_encrypt()
{
    ofstream gfile("sha.dat");
    ifstream hfile("pass.dat");
    string str ;
    hfile >>str ;
    string str1[3] = str.substr(12,4);

}
void pass ::decimal_encrypt()
{
    ofstream ifile("decimal.dat");
    ifstream jfile("pass.dat");
    string str ;
    jfile >>str ;
    string str1 = str.substr(16,4);
    string str2 ;
    int i;
    for(i = 0; i!='\0';i++)
    {
        str2 = ("%d",str1);
    }
    ifile << str2 ;
    ifile.close();
    jfile.close();
}
void pass ::hex_encrypt()
{
    ofstream ifile("hex.dat");
    ifstream jfile("pass.dat");
    string str ;
    jfile >>str ;
    string str1 = str.substr(16,4);
    string str2 ;
    int i;
    for(i = 0; i!='\0';i++)
    {
        str2 = ("%x",str1);
    }
    ifile << str2 ;
    ifile.close();
    jfile.close();
}
void pass ::caesar_encrypt()
{
ofstream ifile("caesar.dat");
    ifstream jfile("pass.dat");
    string str ;
    jfile >>str ;
    string str1 = str.substr(20,4);
    string str2 ;
    int i;
    for(i = 0; i!='\0';i++)
    {
        str2 = str1[i] +3 ;
    }
    ifile << str2 ;
    ifile.close();
    jfile.close();
}
 int main()
 {
    cout<<"JAY's PASS ENCRYPTION \n";
    cout<<"\n";
     pass p ;
     p.length();
     p.w_pass();
     p.r_pass();
     p.md5_encrypt();
     p.bin_encrypt();
     p.base_encrypt();
     p.decimal_encrypt();
     p.hex_encrypt();
     p.caesar_encrypt();
     float progress = 0.0;
while (progress < 1.0) {
    int barWidth = 70;

    std::cout << "[";
    int pos = barWidth * progress;
    for (int i = 0; i < barWidth; ++i) {
        if (i < pos) std::cout << "=";
        else if (i == pos) std::cout << ">";
        else std::cout << " ";
    }
    std::cout << "] " << int(progress * 100.0) << " %\r";
    std::cout.flush();

    progress += 0.16; // for demonstration only
}
std::cout << std::endl;
getche();
    return 0;
 }
