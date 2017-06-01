/*
Problem: Compute the Edit Distance Between Two Strings
Problem Introduction
The edit distance between two strings is the minimum number of insertions, deletions, and mismatches in
an alignment of two strings.
Problem Description
Task. The goal of this problem is to implement the algorithm for computing the edit distance between two
strings.
Input Format. Each of the two lines of the input contains a string consisting of lower case latin letters.
Constraints. The length of both strings is at least 1 and at most 100.
Output Format. Output the edit distance between the given two strings.
time limit : 1 sec
Memory Limit. 64Mb.
Sample 1.
Input:
ab
ab
Output:
0
Sample 2.
Input:
short
ports
Output:
3

*/


#include<vector>
#include<iostream>
#include<string>
using namespace std ;

int EditDistance(string word1, string word2)
{
    int i, j, l1, l2, m;
    l1 = word1.length();
    l2 = word2.length();
    vector< vector<int> > t(l1 + 1, vector<int>(l2 + 1));

    for (i = 0; i <= l1; i++)
        t[i][0] = i;
    for (i = 1; i <= l2; i++)
        t[0][i] = i;

    for (i = 1; i <= l1; i++)
    {
        for (j = 1; j <= l2; j++)
        {
            m = min(t[i-1][j], t[i][j-1]) + 1;
            t[i][j] = min(m, t[i-1][j-1] + (word1[i-1] == word2[j-1] ? 0 : 1));
        }
    }
    return t[l1][l2];
}

int main()
{
    // your code goes here
    string str1 ;
    string str2 ;
    cin >> str1 >> str2;
    cout << EditDistance(str1,str2);

    return 0;
}
