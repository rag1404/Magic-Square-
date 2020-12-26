
## Magic Square

* Magic Square is a array of numbers where rows,columns and diagonal are all equal to same value.__

* For example in the matrix below

*  * 8 * 1 * 6 * 

*  * 3 * 5 * 7 *

*  * 4 * 9 * 2 *

* The sum of rows,columns and matrix are equal to 15. 

* We can write this in two ways (atleast i can think of) one is using foreach and the other one is using sum constraint.

* Here is how the constraints work 

* a.sum() with (item.index(1)==0 ? item : 0) == 15;// This tells the sum of the first row should be 15, The reduction operator expands to a[0][0]+a[0][1]+a[0][2]==15.

* Similarly the other constraints expands to rows,columns and diagnols.
