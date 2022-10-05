The amount of rain water at any given index is: the lower of the highest bars around it, minus the hight of the index.

```javascript
rainWater = Math.min(highestLeftOfIndex, highestRightOfIndex) - indexHeight;
```

_The time complexity of this solution is O(n) linear time._

---

### Overview of Steps

- Set 2 pointers that start at each end of the array.
- As they move towards the middle, they will find the highest right and left values, thus allowing us to calculate the level of rain water at each index.
- Then we can add each rain water value to a running total and return that value at the end.

---

### Steps

1. Create variables for storing the following values:

- The total amount of rain water
- Left and right pointers
- Max values on the left and right side

> _Note: Since the right pointer is going to start at the end of the array, we're going to set it to the last index in the array._

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

3. Inside the `while` loop, we're going to write some logic that updates the max values on the left and right side.

First, we're going to check if the max left value is _less than_ the element at the left pointer's index.

> _Note: I'm using a ternary operator instead of an `if/else` statement._

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

Otherwise, we're going to just keep the same max left value.

```javascript
const trappingRainWater = (arr) => {
  ...

  while (leftPointer <= rightPointer>) {
    maxLeft = maxLeft < arr[leftPointer] ? arr[leftPointer] : maxLeft
  }
}
```

Now, let's repeat the same process for the max value on the right.

```javascript
const trappingRainWater = (arr) => {
  ...

  while (leftPointer <= rightPointer>) {
    maxLeft = maxLeft < arr[leftPointer] ? arr[leftPointer] : maxLeft
    maxRight = maxRight < arr[rightPointer] ? arr[rightPointer] : maxRight;
  }
}
```

4. Now that we've written some logic for updating our left and right max values, let's figure out how to update our running tally of total rain water.

At this point, we're going to be implementing the solution that we saw at the top:

```javascript
rainWater = Math.min(highestLeftOfIndex, highestRightOfIndex) - indexHeight;
```

Firstly, define an `if/else` statement. We're going to check if the max left value is greater than the max right value.

```javascript
const trappingRainWater = (arr) => {
  ...

  while (leftPointer <= rightPointer>) {
    maxLeft = maxLeft < arr[leftPointer] ? arr[leftPointer] : maxLeft
    maxRight = maxRight < arr[rightPointer] ? arr[rightPointer] : maxRight;

    if (maxLeft > maxRight) {
      // something goes here
    } else {
      // something goes here
    }
  }
}
```

If it _is_ greater than, we're going to subtract the element at the right pointer's index from the max right value. Then we're going to add this to the total rain water.

```javascript
const trappingRainWater = (arr) => {
  ...

  while (leftPointer <= rightPointer>) {
    maxLeft = maxLeft < arr[leftPointer] ? arr[leftPointer] : maxLeft
    maxRight = maxRight < arr[rightPointer] ? arr[rightPointer] : maxRight;

    if (maxLeft > maxRight) {
      totalWater += maxRight - arr[rightPointer];
    } else {
      // something goes here
    }
  }
}
```

And then we're going to move the right pointer one step towards the middle by decrementing its value.

```javascript
const trappingRainWater = (arr) => {
  ...

  while (leftPointer <= rightPointer>) {
    maxLeft = maxLeft < arr[leftPointer] ? arr[leftPointer] : maxLeft
    maxRight = maxRight < arr[rightPointer] ? arr[rightPointer] : maxRight;

    if (maxLeft > maxRight) {
      totalWater += maxRight - arr[rightPointer];
      rightPointer --;
    } else {
      // something goes here
    }
  }
}
```

5. And then we're going to repeat some similar logic for the `else` clause.

```javascript
const trappingRainWater = (arr) => {
  ...

  while (leftPointer <= rightPointer>) {
    maxLeft = maxLeft < arr[leftPointer] ? arr[leftPointer] : maxLeft
    maxRight = maxRight < arr[rightPointer] ? arr[rightPointer] : maxRight;

    if (maxLeft > maxRight) {
      totalWater += maxRight - arr[rightPointer];
      rightPointer --;
    } else {
      totalWater += maxLeft - arr[leftPointer];
      leftPointer++;
    }
  }
}
```

6. Lastly, we're just going to return our total rain water.

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
