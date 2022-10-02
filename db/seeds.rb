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

Algorithm.create(name: "Trapping Rain Water", description: "Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.", category_id: array.id, difficulty_id: hard.id)

Algorithm.create(name: "Binary Tree Paths", description: "Given the root of a binary tree, return all root-to-leaf paths in any order. A leaf is a node with no children.", category_id: binary_tree.id, difficulty_id: easy.id)

puts "data has been seeded! 🍃"