_The time complexity of this solution is O(n) linear time._

---

### Overview of Steps

- Set 2 pointers, 1 at the end of each string.
- Move the pointers towards the front of each string.
- Keep track of any hash symbols that are encountered.
- Then compare whatever's left over!

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

3. Inside the `while` loop, we're going to write some logic that does the following:

- Count the number of hash symbols found in each string
- Compare the strings
- Move the pointers towards the front of the string

4. Firstly, we're going to write a helper function to count the hash symbols. The arguments are going to be a string value and its pointer.

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

5. Inside the helper function, we're going to check if the element at the pointer's index is a hash.

```javascript
const hashCounter = (str, pointer) => {
  if (str[pointer] === "#") {
    // something goes here
  }
};
```

6. If it _is_ a hash, then we're going to create a `count` variable and set it to 2.

> Note: This is because we have to move back 2 spaces when we find a hash symbol.

```javascript
const hashCounter = (str, pointer) => {
  if (str[pointer] === "#") {
    let count = 2;
  }
};
```

7. Still inside the `if` statement, we're going to create a `while` loop. This loop is going to run while the count is greater than 0.

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

9. Then write an `if` statement that runs if we find another hash. We're going to add 2 to the count if this is true.

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

10. And finally, outside of the original `if` statement, we're just going to return the pointer value!

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

11. Now, back to our original function. Inside the `while` loop that checks if the s pointer or t pointer are greater than or equal to 0, we're going to call our helper function.

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

12. After that, we're going to write an `if/else` statement.

If the element at the s pointer _is not_ equal to the element at the t pointer, we're going to return false. This is because the first element of each string doesn't equate each other.

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

13. Otherwise, we're going to decrement both pointers.

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

14. And finally, we're going to return `true` outside of the `while` loop!

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
