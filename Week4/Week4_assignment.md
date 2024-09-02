##A Python program to check whether a string is a palindrome or not using a stack.
```
def is_palindrome(s):
    # Create a stack and push all characters onto the stack
    stack = []
    for ch in s:
        stack.append(ch)
    
    # Construct the reversed string by popping from the stack
    result = ""
    while stack:
        result += stack.pop()
    
    # Compare the reversed string with the original string
    return s == result

# Function to preprocess the string (remove spaces and convert to lowercase)
def preprocess_string(s):
    # Remove spaces and convert to lowercase
    return ''.join(s.split()).lower()

def main():
    # Get a string from the user
    user_input = input("Enter a string to check if it is a palindrome: ")
    
    # Preprocess the string
    processed_string = preprocess_string(user_input)
    
    # Check if the processed string is a palindrome
    if is_palindrome(processed_string):
        print(f'"{user_input}" is a palindrome.')
    else:
        print(f'"{user_input}" is not a palindrome.')

# Run the main function
if __name__ == "__main__":
    main()
```
##Explain the concept of comprehensions in Python with at least three examples.
....
A comprehension is a compact way of creating a Python data structure from one or more iterators. 
Comprehensions make it possible for you to combine loops and conditional tests with a less verbose syntax. 
```
### (1) list comprehension. 
#The simplest form of list comprehension is: [ expression for item in iterable ]
#The list comprehension moves the loop inside the square brackets...

number_list = [number for number in range(1,6)]

### (2) Dictionary Comprehensions
# The syntax for Dictionary comphresions is almost similar to that for list comphesions --- { key_expression : value_expression for expression in iterable }
#Similar to list comprehensions, dictionary comprehensions can also have if tests and multiple for clauses: An example is shown below

word = 'letters'
letter_counts = {letter: word.count(letter) for letter in word}
letter_counts

### (3) Generator Comprehensions
#Turples dont have comphressions but instaed create a generator. 
#A generator is one way to provide data to an iterator.

#The syntax is as would have been for a turple 

number_thing = (number for number in range(1, 6))
# so  type(number_thing) would return a generator object (<class 'generator'>)
#You can iterate over this generator object directly, as illustrated here:

for number in number_thing:
print(number)

```
### Explain what a compound datatype is in Python with three examples.
A compound data type is a data type that can hold multiple values, often of different types, together in a single structure. These data types are useful for organizing and managing collections of data. Here are three common examples:

1. List
A list is an ordered, mutable collection of items. Lists can contain elements of different data types, including other lists.
```
# Example of a list
my_list = [1, "hello", 3.14, [1, 2, 3]]
print(my_list)
````

2. Tuple
A tuple is similar to a list, but it is immutable, meaning its elements cannot be changed after creation. Tuples are often used to store related pieces of data.
```
# Example of a tuple
my_tuple = (1, "hello", 3.14)
print(my_tuple) 
````
3. Dictionary
A dictionary is an unordered collection of key-value pairs. Each key must be unique, and it is used to access the corresponding value.
```
# Example of a dictionary
my_dict = {"name": "Alice", "age": 30, "city": "New York"}
print(my_dict)
```
### 4). Write a function that takes a string and returns a list of bigrams.
Bigrams are a type of n-gram where n is 2
bigram consists of two consecutive elements or tokens in a sequence. In the context of text processing and natural language processing (NLP), bigrams are pairs of adjacent words in a sentence or document.

For example  if the is Text: "I love you"
The Bigrams: are ('I', 'love') and ('love', 'you')
```
def generate_bigrams(text):
    # Split the text into words
    words = text.split()
    # Check if there are fewer than 2 words
    if len(words) < 2:
        return []  # No bigrams can be created
    # Create bigrams using a list comprehension
    bigrams = [(words[i], words[i + 1]) for i in range(len(words) - 1)]
    return bigrams
```
### 5). Given a dictionary with keys as letters and values as lists of letters, write a function closest_key to find the key with the input value closest to the beginning of the list.
```
def closest_key(d, value):
    closest_key = None
    closest_index = float('inf')  # Initialize with infinity

    for key, lst in d.items():
        if value in lst:
            index = lst.index(value)
            if index < closest_index:
                closest_index = index
                closest_key = key

    return closest_key
````

 

    

