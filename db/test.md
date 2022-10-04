The amount of rain water at any given index is: the lower of the highest bars around it, minus the hight of the index.

```
rainWater = Math.min(highestLeftOfIndex, highestRightOfIndex) - indexHeight
```

_The time complexity of this solution is O(n) linear time._

---

### Overview

- Set 2 pointers that start at each end of the array.
- As the move towards the middle, they will find the highest right and left values, thus allowing us to calculate the level of rain water at each index.
- Then we can add each rain water value to a running total and return that value at the end.

### Steps

1. Create variables for storing the following values:

- the total amount of rain water
- left and right pointers
- max values on the left and right side

_Note: Since the right pointer is going to start at the end of the array, we're going to set it to the last index in the array._

```javascript
const trappingRainWater = (arr) => {
  let totalWater = 0;
  let leftPointer = 0;
  let rightPointer = arr.length - 1;
  let maxLeft = 0;
  let maxRight = 0;
}
```

2. Create a `while` loop that runs while the left pointer is smaller or equal to the right pointer. We want this loop to run until the left and right pointers meet in the middle of the array.

```javascript
const trappingRainWater = (arr) => {
  let totalWater = 0;
  let leftPointer = 0;
  let rightPointer = arr.length - 1;
  let maxLeft = 0;
  let maxRight = 0;

  while (leftPointer <= rightPointer>) {
    // do something here
  }
}
```

### Full solution

```javascript
const trappingRainWater = (arr) => {
  let totalWater = 0;
  let leftPointer = 0;
  let rightPointer = arr.length - 1;
  let maxLeft = 0;
  let maxRight = 0;

  while (leftPointer <= rightPointer) {
    maxLeft = maxLeft < arr[leftPointer] ? arr[leftPointer] : maxLeft;
    maxRight = maxRight < arr[rightPointer] ? arr[rightPointer] : maxRight;

    if (maxLeft > maxRight) {
      totalWater += maxRight - arr[rightPointer];
      rightPointer--;
    } else {
      totalWater += maxLeft - arr[leftPointer];
      leftPointer++;
    }
  }

  return totalWater;
};
```
