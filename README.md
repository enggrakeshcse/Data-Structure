# Data-Structure
## Sorting Algo
### Selection Sort
Algo : - <br />
Step 1 − Set MIN to location 0 <br />
Step 2 − Search the minimum element in the list <br />
Step 3 − Swap with value at location MIN <br />
Step 4 − Increment MIN to point to next element <br />
Step 5 − Repeat until list is sorted <br />
TimeComplexity = O(n^2) <br />
For Example:- <br />
    7   8   4   2 <br />
    2   8   4   7 <br />
    2   4   8   7 <br />
    2   4   7   8 <br />
### Insertion Sort
Algo: - <br />
Step 1 − If it is the first element, it is already sorted. return 1 <br />
Step 2 − Pick next element <br />
Step 3 − Compare with all elements in the sorted sub-list <br />
Step 4 − Shift all the elements in the sorted sub-list that is greater than the  
value to be sorted <br />
Step 5 − Insert the value <br />
Step 6 − Repeat until list is sorted <br />
TimeComplexity- O(n^2) <br />
For Example:- <br />
7   8   4   2 <br />
7   8   4   2 <br />
4   8   7   2 <br />
4   7   8   2 <br />
2   7   8   4 <br />
2   4   8   7 <br />
2   4   7   8 <br />
### Bubble Sort
Algo: - <br />
Step 1 - Take a unsorted list<br />
Step 2 - for i = 0 to list.count - 1<br />
Step 3 - for j = 0 to list.count - 1 - i <br />
Step 4 - if list[j] > list[j + 1] -> Swap(list[j], list[j + 1])<br />
Step 5 - finally we get sorted list<br />
TimeComplexity = O(n^2)<br />
For Example:- <br />
7   8   4   2 <br />
7   8   4   2 <br />
7   4   8   2 <br />
4   7   2   8 <br />
4   2   7   8 <br />
2   4   7   8 <br />
### Merge Sort
TimeComplexity = O(nlogn)<br/>
Divition
<img src="https://github.com/enggrakeshcse/Data-Structure/blob/Sorting-Algo/Sort-Algo/Images/Screen%20Shot%202019-08-07%20at%201.03.14%20PM.png" /> <br />

merge
<imp src = "https://github.com/enggrakeshcse/Data-Structure/blob/Sorting-Algo/Sort-Algo/Images/merge.png" /> 

### Quick Sort 
TimeComplexity = O(nlogn)
<imp src = "https://github.com/enggrakeshcse/Data-Structure/blob/Sorting-Algo/Sort-Algo/Images/quick_sort.jpg" />
