The amount of rain water at any given index is: the lower of the highest bars around it, minus the hight of the index.

```
rainWater = Math.min(highestLeftOfIndex, highestRightOfIndex) - indexHeight
```

_The time complexity of this solution is O(n) linear time._

---

### Overview of Steps

- Set 2 pointers that start at each end of the array.
- As the move towards the middle, they will find the highest right and left values, thus allowing us to calculate the level of rain water at each index.
- Then we can add each rain water value to a running total and return that value at the end.

### Steps

1. Create variables for storing the following values:

- The total amount of rain water
- Left and right pointers
- Max values on the left and right side

_Note: Since the right pointer is going to start at the end of the array, we're going to set it to the last index in the array._

```javascript
const trappingRainWater = (arr) => {
  let totalWater = 0;
  let leftPointer = 0;
  let rightPointer = arr.length - 1;
  let maxLeft = 0;
  let maxRight = 0;
};
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

3. Inside the `while` loop, we're going to do a couple different things.

First, we're going to check if the max left value is less than the element at the left pointer's index. Here, I'm going to be using a ternary operator.

```javascript
const trappingRainWater = (arr) => {
  ...

  while (leftPointer <= rightPointer>) {
    maxLeft < arr[leftPointer] ? // something else goes here
  }
}
```

If it _is_ less than, we're going to reassign the max left value to be the element's value at the left pointer.

```javascript
const trappingRainWater = (arr) => {
  ...

  while (leftPointer <= rightPointer>) {
    maxLeft = maxLeft < arr[leftPointer] ? arr[leftPointer] : // something else will go here
  }
}
```

Otherwise, we're going to keep the same max left value.

```javascript
const trappingRainWater = (arr) => {
  ...

  while (leftPointer <= rightPointer>) {
    maxLeft = maxLeft < arr[leftPointer] ? arr[leftPointer] : maxLeft
  }
}
```

Now, let's repeat the same process for the max value on the right.



- If the left max value is greater than the right max value...

  - We're going to subtract the value at the right pointer's index from the max right value
  - Then we're going to add this to the running total of rain water
  - And then move the right pointer one step towards the middle by decrementing its value

- Otherwise, we're going to repeat a similar process for the max left value and left pointer

---

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
