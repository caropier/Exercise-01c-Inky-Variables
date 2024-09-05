/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 Variable checking:
 - equality: "Spot" == "Spot"
 not equality: 1 != 2
 greater: >
 less: <
 greater or equal: >=
 less than or equal: <=
 
 In the assignment:
 4/4 Add four more knots
 DONE Assign at least TWO new variables through player choices
 DONE Print at least one of the variables to the player in a passage
 DONE Check the value of a variable and have it do something
*/

VAR health = 5
VAR pet_name = " "
VAR torches = 0
VAR treats = 0
VAR gems = 0


-> memory

== memory == 
Before you stands the cavern of Josh. You wish your childhood pet was with you now. The cave might be less intimidating. What was your pet's name?

    * [Dakota]
     ~ pet_name = "Dakota"  
        -> cave_mouth
    * [Ciara]
     ~ pet_name = "Ciara"
        -> cave_mouth
    * [Zorro]
    ~ pet_name = "Zorro"
        -> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. if only {pet_name} could see you now!

You have {torches} torches and {treats} treats.

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup
* [Pick up a treat] -> treat_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
{pet_name == "Zorro": Jack would love it here in the west.| }
* {treats > 0} [Explore deeper] -> west_tunnel_dog
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

=== treat_pickup ===
~ treats = treats + 1
You now have a treat in your hand. {pet_name} would loved it..
You should continue collecting them if your inventory allows it, they're not here for no reason.
* [Go Back ] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.. but wait? there's a small dog in the corner. 
{pet_name == "Ciara": oh my, it looks just like Ciara!| }
* [Befriend the dog] -> east_dog
-> END

=== east_dog ===
You bend down to pet the dog despite your stiff garments. The dog approaches and wags its tail happily. 
-> END

== west_tunnel_dog ==
it's dark, but you hear something in the distance.
* [Continue onward] -> west_final
* [Go Back] -> cave_mouth
-> END

=== west_final ===
~ treats = treats - 1
~ gems = gems + 1
You find a dog in the corner. His tail wags happy to see you. He eats the treat you offer him. In return he gives you a gem. It seems to be of high value.
You have {treats} treats, but you have {gems} gem. 
-> END



