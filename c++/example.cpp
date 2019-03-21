/*
David Cary 2010-09-14
quick demo for wikibooks
public domain
*/
#include <iostream>
#include <vector>
using namespace std;

vector<int> pick_vector_with_biggest_fifth_element(
    vector<int> left,
    vector<int> right
){
    if( (left[5]) < (right[5]) ){
        return( right );
    };
    // else
    return( left );
}

int vector_demo(void){
    cout << "vector demo" << endl;
    vector<int> left(7);
    vector<int> right(7);

    left[5] = 7;
    right[5] = 8;
    cout << left[5] << endl;
    cout << right[5] << endl;
    vector<int> biggest(
        pick_vector_with_biggest_fifth_element( left, right )
    );
    cout << biggest[5] << endl;

    return 0;
}

int main(void){
    vector_demo();
}
