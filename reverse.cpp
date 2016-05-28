#include <iostream>
#include <utility> 
#include <ctime>

using namespace std;

static int find_max(int arr[], int start, int len) {
    int m = start;
    int i = start + 1;
    while (i < len) {
        if (arr[i] > arr[m]) m = i;
        ++i;
    }
    return m;
}

// runs in O(len^2)
static void descend_order(int arr[], int len) {
    for (int i = 0; i < len - 1; ++i) {
        int m = find_max(arr, i, len);
        swap(arr[i], arr[m]);
    }
}

static void print_arr(int arr[], int len) {
    for (int i = 0; i < len; ++i)
        cout << arr[i] << " ";
    cout << endl;
}

static void get_runtime(int size_arr[], int repeat_arr[], double time_arr[], int len) {
    //cout << "clicks per second: " << CLOCKS_PER_SEC << endl;

    for (int i = 0; i < len; ++i) {
        int s = size_arr[i];
        int data[s];
        

        int r = repeat_arr[i];
        clock_t t = clock();
        for (int j = 0; j < r; ++j) {
            //cout << "dada" << endl;
            descend_order(data, s);
        }
        t = clock() - t;

        //cout << "size: " << s << " clicks: " << (double)t/r << endl;
        time_arr[i] = (double)t / r;
    }
}

int main() {
    int size_arr[] = {500, 1000, 2000, 4000, 8000, 16000};
    int repeat_arr[] = {100, 50, 30,   20,   15,    10};
    int len = sizeof(size_arr) / sizeof(size_arr[0]);
    double time_arr[len];
    get_runtime(size_arr, repeat_arr, time_arr, len);
    for (int i = 0; i < len; ++i) {
        cout << size_arr[i] << " " << time_arr[i] << endl;
    }

    // int test_arr[] = {5, 3, 2, 4, 1, 7};
    // len = sizeof(test_arr) / sizeof(test_arr[0]);
    // print_arr(test_arr, len);
    // descend_order(test_arr, len);
    // print_arr(test_arr, len);
}
