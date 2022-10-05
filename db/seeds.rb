Category.destroy_all
Difficulty.destroy_all
Algorithm.destroy_all

string = Category.create(name: "String")
array = Category.create(name: "Array")
linked_list = Category.create(name: "Linked List")
binary_tree = Category.create(name: "Binary Tree")

easy = Difficulty.create(name: "Easy")
medium = Difficulty.create(name: "Medium")
hard = Difficulty.create(name: "Hard")

Algorithm.create(name: "Two Sum", description: "Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target. You may assume that each input would have exactly one solution, and you may not use the same element twice. You can return the answer in any order.", category_id: array.id, difficulty_id: easy.id, solution: "# Hello, *world*!")

Algorithm.create(name: "Palindrome Pairs", description: "Given a list of unique words, return all the pairs of the distinct indices (i, j) in the given list, so that the concatenation of the two words words[i] + words[j] is a palindrome.", category_id: string.id, difficulty_id: hard.id,
  solution: "**Cornix** stagna imagine mirarique in favilla recordor flammiferas lucem tamen legesque manant.
  - Suadeat inpediunt latoque habent et noctis neque, mox
  - aliqua at restitit! Sustinet sacrilegos perdidimus tulit veluti rogabat saepe.
  - Exanimis iustamque solutis Polypemonis, nitore deficit urbe, ter ait et.

  ```javascript
  const exampleFunction = () => {
      let arr = []

      arr.push('a','b','c')

      return arr
  }
  ```

  Honorati insilit; diva exsultat **gyrum est** pectora sonantia supremum superfusis artus. Quod terrae vacuas umbrae quodsi **ictibus secundas**, mutaviteodem. Visum adulterio non virtus hic obstiterit latebras ingratum fugio commissus ambit, quo molibus, ille est? Variasque mente numen quam in pariterfecit fecit inhibere recepit ambrosia ignes; *locus qui non*."
)

Algorithm.create(name: "Trapping Rain Water", description: "Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.", category_id: array.id, difficulty_id: hard.id, solution: "

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
")

Algorithm.create(name: "Binary Tree Paths", description: "Given the root of a binary tree, return all root-to-leaf paths in any order. A leaf is a node with no children.", category_id: binary_tree.id, difficulty_id: easy.id)

Algorithm.create(name: "Backspace String Compare", description: "Given two strings s and t, return true if they are equal when both are typed into empty text editors. '#' means a backspace character. Note that after backspacing an empty text, the text will continue empty.", category_id: string.id, difficulty_id: easy.id, solution: '

_The time complexity of this solution is O(n) linear time._

---

### Overview of Steps

- Set 2 pointers, 1 at the end of each string.
- Move the pointers towards the front of each string.
- Keep track of any hash symbols that are encountered.
- Then compare whatever\'s left over!

---

### Steps

1. Create a pointer for each string. Set the value to be the last element in the string.

```javascript
const backspaceCompare = (s, t) => {
  let sPointer = s.length - 1;
  let tPointer = t.length - 1;
};
```

2. Create a `while` loop that runs while both pointers are greater than or equal to 0.

```javascript
const backspaceCompare = (s, t) => {
  let sPointer = s.length - 1;
  let tPointer = t.length - 1;

  while (sPointer >= 0 || tPointer >= 0) {
    // something goes here
  }
};
```

3. Inside the `while` loop, we\'re going to write some logic that does the following:

- Count the number of hash symbols found in each string
- Compare the strings
- Move the pointers towards the front of the string

4. Firstly, we\'re going to write a helper function to count the hash symbols. The arguments are going to be a string value and its pointer.

```javascript
const hashCounter = (str, pointer) => {
  // something goes here
};

const backspaceCompare = (s, t) => {
  let sPointer = s.length - 1;
  let tPointer = t.length - 1;

  while (sPointer >= 0 || tPointer >= 0) {
    // something goes here
  }
};
```

5. Inside the helper function, we\'re going to check if the element at the pointer\'s index is a hash.

```javascript
const hashCounter = (str, pointer) => {
  if (str[pointer] === "#") {
    // something goes here
  }
};
```

6. If it _is_ a hash, then we\'re going to create a `count` variable and set it to 2.

> Note: This is because we have to move back 2 spaces when we find a hash symbol.

```javascript
const hashCounter = (str, pointer) => {
  if (str[pointer] === "#") {
    let count = 2;
  }
};
```

7. Still inside the `if` statement, we\'re going to create a `while` loop. This loop is going to run while the count is greater than 0.

```javascript
const hashCounter = (str, pointer) => {
  if (str[pointer] === "#") {
    let count = 2;

    while (count > 0) {
      // something goes here
    }
  }
};
```

8. Inside the `while` loop, decrement the count and the pointer.

```javascript
const hashCounter = (str, pointer) => {
  if (str[pointer] === "#") {
    let count = 2;

    while (count > 0) {
      count--;
      pointer--;
    }
  }
};
```

9. Then write an `if` statement that runs if we find another hash. We\'re going to add 2 to the count if this is true.

```javascript
const hashCounter = (str, pointer) => {
  if (str[pointer] === "#") {
    let count = 2;

    while (count > 0) {
      count--;
      pointer--;

      if (str[pointer] === "#") {
        count += 2;
      }
    }
  }
};
```

10. And finally, outside of the original `if` statement, we\'re just going to return the pointer value!

```javascript
const hashCounter = (str, pointer) => {
  if (str[pointer] === "#") {
    let count = 2;

    while (count > 0) {
      count--;
      pointer--;

      if (str[pointer] === "#") {
        count += 2;
      }
    }
  }

  return pointer;
};
```

11. Now, back to our original function. Inside the `while` loop that checks if the s pointer or t pointer are greater than or equal to 0, we\'re going to call our helper function.

> Note: Make sure to call the helper function twice, so that it runs for each string.

```javascript
const hashCounter = (str, pointer) => {
  if (str[pointer] === "#") {
    let count = 2;

    while (count > 0) {
      count--;
      pointer--;

      if (str[pointer] === "#") {
        count += 2;
      }
    }
  }

  return pointer;
};

const backspaceCompare = (s, t) => {
  let sPointer = s.length - 1;
  let tPointer = t.length - 1;

  while (sPointer >= 0 || tPointer >= 0) {
    sPointer = hashCounter(s, sPointer);
    tPointer = hashCounter(t, tPointer);
  }
};
```

12. After that, we\'re going to write an `if/else` statement.

If the element at the s pointer _is not_ equal to the element at the t pointer, we\'re going to return false. This is because the first element of each string doesn\'t equate each other.

```javascript
const hashCounter = (str, pointer) => {
  ...
};

const backspaceCompare = (s, t) => {
  let sPointer = s.length - 1;
  let tPointer = t.length - 1;

  while (sPointer >= 0 || tPointer >= 0) {
    sPointer = hashCounter(s, sPointer);
    tPointer = hashCounter(t, tPointer);

    if (s[sPointer] !== t[tPointer]) {
      return false;
    } else {
      // something goes here
    }
  }
};
```

13. Otherwise, we\'re going to decrement both pointers.

```javascript
const hashCounter = (str, pointer) => {
  ...
};

const backspaceCompare = (s, t) => {
  let sPointer = s.length - 1;
  let tPointer = t.length - 1;

  while (sPointer >= 0 || tPointer >= 0) {
    sPointer = hashCounter(s, sPointer);
    tPointer = hashCounter(t, tPointer);

    if (s[sPointer] !== t[tPointer]) {
      return false;
    } else {
      sPointer--;
      tPointer--;
    }
  }
};
```

14. And finally, we\'re going to return `true` outside of the `while` loop!

```javascript
const hashCounter = (str, pointer) => {
  if (str[pointer] === "#") {
    let count = 2;

    while (count > 0) {
      count--;
      pointer--;

      if (str[pointer] === "#") {
        count += 2;
      }
    }
  }

  return pointer;
};

const backspaceCompare = (s, t) => {
  let sPointer = s.length - 1;
  let tPointer = t.length - 1;

  while (sPointer >= 0 || tPointer >= 0) {
    sPointer = hashCounter(s, sPointer);
    tPointer = hashCounter(t, tPointer);

    if (s[sPointer] !== t[tPointer]) {
      return false;
    } else {
      sPointer--;
      tPointer--;
    }
  }

  return true;
};
``` 
')

puts "data has been seeded! 🍃"