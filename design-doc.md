# Design Doc

The Study Zone is a place to...

- Track the algorithms that I've solved
- Document my solutions
- Write rationales for different ways of solving an algorithm
- Talk about what I've learned

## Models

Algorithm

- title :string
- description :string
- category_id :foreign_key
- difficulty_level_id :foreign_key

Category

- title :string

DifficultyLevel

- title :string

Solution

- explanation :string
- time_complexity :string
- space_complexity :string

## User stories
