# Practice Playground

Use this file to practice all keymaps while keeping the drill files open in a split.
Feel free to edit or reset this file anytime.

--

## Simple words
alpha bravo charlie delta echo foxtrot golf hotel india juliet kilo lima
moon sun earth mars venus jupiter saturn uranus neptune pluto
red green blue yellow orange purple black white gray brown

## Lines for join/move/indent
line one for join
line two for join
line three for join

line A for indent
line B for indent
line C for indent

## Repeated words for substitute
repeat repeat repeat
bravo bravo bravo
leader leader leader

## Surround / replace targets
wrap_me
wrap_me_again
"already quoted"
'single quoted'

## Function arguments (split/join)
function_call(arg1, arg2, arg3)
function_call(
  arg1,
  arg2,
  arg3
)

## Rust playground (LSP + formatting + navigation)
fn add(a: i32, b: i32) -> i32 {
    a + b
}

fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    let doubled: Vec<i32> = numbers.iter().map(|n| add(*n, *n)).collect();
    println!("{:?}", doubled);
}

struct Point {
    x: i32,
    y: i32,
}

impl Point {
    fn new(x: i32, y: i32) -> Self {
        Self { x, y }
    }

    fn magnitude_squared(&self) -> i32 {
        self.x * self.x + self.y * self.y
    }
}

enum Direction {
    North,
    South,
    East,
    West,
}

fn describe(dir: Direction) -> &'static str {
    match dir {
        Direction::North => "north",
        Direction::South => "south",
        Direction::East => "east",
        Direction::West => "west",
    }
}

## Search targets
search_me_here
search_me_there
search_me_everywhere

## Visual selection targets
one two three four five
six seven eight nine ten

## Clipboard/yank targets
copy_this_line
another_line_to_copy

## Markdown playground (if needed)
plain line
- bullet line
1. numbered line
- [ ] task unchecked
- [x] task checked

## Git practice line (edit to create hunks)
change this line to create a diff
change this line too

## Notes
- Add or remove text freely.
- Use :setlocal modifiable if needed (should be modifiable by default).
