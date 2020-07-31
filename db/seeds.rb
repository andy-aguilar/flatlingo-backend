# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Deck.destroy_all
Card.destroy_all
User.destroy_all

flatiron = User.create(username: "Flatiron")

andy = User.create(username: "Andy")

beer = Deck.create(name: "Beer")

flatiron.decks << beer
andy.decks << beer

10.times do 
    card = Card.create(front_word: Faker::Beer.brand, back_definition: Faker::Beer.name, back_notes: Faker::Beer.style, understanding: false, understanding_num: 0)
    beer.cards << card
end

ruby = Deck.create(name: "Ruby")
andy.decks << ruby

ruby.cards << Card.create(front_word: "Array", back_definition: "An array is a Ruby data type that holds an ordered collection of values, which can be any type of object including other arrays.", 
    back_notes: 'Ruby arrays can be created with either literal notation or the Array.new constructor.<br>
    <strong>Syntax:</strong><br>
    empty_arr = Array.new<br>
    => []<br><br>
    
    matzes = Array.new(3, "Matz!")<br>
    => ["Matz!", "Matz!", "Matz!"]<br><br>
    
    # Array literal notation<br>
    variable = []<br>
    other_variable = [item1, item2, ..., itemN]', understanding: false, understanding_num: 0)

ruby.cards << Card.create(front_word: "Array.Each", back_definition: "You can iterate over the elements in an array using Array.each, which takes a block.", 
        back_notes: 'Ruby arrays can be created with either literal notation or the Array.new constructor.<br>
        <strong>Syntax:</strong><br>
        array.each do |arg|<br>
            # Do something to each element, referenced as arg<br>
        end<br><br>
        
        #or<br><br>
        
        array.each { |arg|<br>
            # Do something to each element, referenced as arg<br>
        }', understanding: false, understanding_num: 0)

ruby.cards << Card.create(front_word: "Blocks", back_definition: "A block is a chunk of code that lives inside a control statement, loop, method definition, or method call. It returns the value of its last line. In Ruby, blocks can be created two ways: with braces or with a do/end statement.", 
    back_notes: 'Ruby arrays can be created with either literal notation or the Array.new constructor.<br>
    <strong>Syntax:</strong><br>
    # Blocks that span only one line usually use the braces form<br>
    objs.method { |obj| do_something }<br><br>
    # Blocks that span multiple lines usually use the do/end form<br>
        objs.method do |obj|<br>
            # do first line<br>
            # do second line<br>
            # ...<br>
            # do nth line<br>
        end<br>', understanding: false, understanding_num: 0)


ruby.cards << Card.create(front_word: "Booleans", back_definition: "In Ruby, there are two boolean values: true and false.", 
    understanding: false, 
    understanding_num: 0)

ruby.cards << Card.create(front_word: "Logical Operators", 
    back_definition: "Logical operators are used to compare to boolean values. Ruby has 6 operators to compare boolean values: and, or, not, &&, ||, and not. and and &&, or and ||, and not and ! have the same functionality but the verbiage operators (and, or and not) have lower precedence than the symbolic operators (&&, || and !).", 
    back_notes: '<strong>Syntax:</strong><br>
    // returns true if both boolean1 and boolean2 are true<br>
    boolean1 && boolean2<br>
    boolean1 and boolean2<br><br>
    
    // returns true if either boolean1 or boolean2 are true<br>
    boolean1 || boolean2<br>
    boolean1 or boolean2<br><br>
    
    // returns the opposite of boolean<br>
    !boolean<br>
    not boolean', 
    understanding: false, 
    understanding_num: 0)

ruby.cards << Card.create(front_word: "Comparison operators", 
        back_definition: "Comparison operators are used to test the relationship between two objects. The equality (==) and inequality (!=) operators can be used on almost any type of value where the other operators are used for numeric comparisons.", 
        back_notes: '<strong>Syntax:</strong><br>
        x == y // returns true if two things are equal<br>
        x != y // returns true if two things are not equal<br>
        x <= y // returns true if x is less than or equal to y<br>
        x >= y // returns true if x is greater than or equal to y<br>
        x < y // returns true if x is less than y<br>
        x > y // returns true if x is greater than y', 
        understanding: false, 
        understanding_num: 0)

ruby.cards << Card.create(front_word: "Comments", 
        back_definition: "Adding human-readable comments to your programs is a good idea to help others who read your code understand what it does. However in Ruby, it is common to not write many comments, since the language is so human-readable already. It’s usually very easy to quickly understand what a good piece of Ruby code does.", 
        back_notes: '<strong>Syntax:</strong><br>
        # comment text', 
        understanding: false, 
        understanding_num: 0)

ruby.cards << Card.create(front_word: "Hashes", 
    back_definition: "Hashes are collections of key-value pairs. Like arrays, they have values associated with indices, but in the case of hashes, the indices are called “keys.” Keys can be anything that’s hashable, such as integers, strings, or symbols, but they must be unique for the hash they belong. The values to which keys refer can be any Ruby object.", 
    back_notes: "", 
    understanding: false, 
    understanding_num: 0) 

ruby.cards << Card.create(front_word: "Creating Sandard Hashes", 
    back_definition: "There are several ways to create hashes in Ruby. The common most two are the new constructor method and its literal notation. It is also considered a best practice to use symbols as keys. The following are valid in all versions of Ruby.", 
    back_notes: "<strong>Syntax:</strong><br>
    my_hash = Hash.new([default_value])<br><br>
    OR<br><br>
    my_hash = {<br>
    'key1' => value1,<br>
    :key2  => value2,<br>
    3 => value 3<br>
    }<br><br>

    OR<br><br>
    my_hash = {<br>
        key1: value1,<br>
        key2: value2<br>
    }<br>", 
    understanding: false, 
    understanding_num: 0) 




puts "NICE JOB SEEDING"


