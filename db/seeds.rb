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
")

Algorithm.create(name: "Binary Tree Paths", description: "Given the root of a binary tree, return all root-to-leaf paths in any order. A leaf is a node with no children.", category_id: binary_tree.id, difficulty_id: easy.id)

puts "data has been seeded! 🍃"