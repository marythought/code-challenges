var swap = function(array, firstIndex, secondIndex) {
  var temp = array[firstIndex];
  array[firstIndex] = array[secondIndex];
  array[secondIndex] = temp;
};

var testArray = [7, 9, 4];
swap(testArray, 0, 1);
println(testArray);
Program.assertEqual(testArray, [9, 7, 4]);
swap(testArray, 1, 2);
Program.assertEqual(testArray, [9, 4, 7]);
swap(testArray, 0, 2);
Program.assertEqual(testArray, [7, 4, 9]);

var indexOfMinimum = function(array, startIndex) {
    var minValue = array[startIndex];
    var minIndex = startIndex;
    for(var i = minIndex + 1; i < array.length; i++){
        if(array[i] < minValue){
            minValue = array[i];
            minIndex = i;
        }
    }
    return minIndex;
};

var array = [18, 6, 66, 44, 9, 22, 14];
var index = indexOfMinimum(array, 2);

//  For the test array [18, 6, 66, 44, 9, 22, 14],
//  the value 9 is the smallest of [..66, 44, 9, 22, 14]
//  Since 9 is at index 4 in the original array,
//  "index" has value 4

println("The index of the minimum value of the subarray starting at index 2 is " + index + "."  );
Program.assertEqual(index, 4);

index = indexOfMinimum(array, 0);
println("The index of the minimum value of the subarray starting at index 0 is " + index + "."  );
Program.assertEqual(index, 1);

index = indexOfMinimum(array, 6);
println("The index of the minimum value of the subarray starting at index 6 is " + index + "."  );
Program.assertEqual(index, 6);


