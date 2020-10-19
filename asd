from random import randint

moves = ["Rock", "Paper", "Scissor", ]
computerPlay = moves[randint(0, 2)]

print("This is a rock, paper, scissors game...")
print("Rock beats scissors...")
print("Paper beats rock...")
print("Scissors beats paper...")
print("\nYou have 3 lives...")

userLives = 3
computerLives = 3

while userLives and computerLives > 0:
    userPlay = input("\nPick your play: 'Rock', 'Paper', or 'Scissors': ")
    computerPlay = moves[randint(0, 2)]
    computerPlay

    if userPlay == computerPlay:
        print("\nTied.")
        print("You have ", userLives, "and your opponent has ", computerLives, "left.")
        computerPlay

    elif userPlay == "Rock":
        if computerPlay == "Paper":
            print("\nYou lose, " + computerPlay + "covers " + userPlay + ".")
            userLives -= 1
            print("You now have ", userLives, "left and your opponent has ", computerLives, "left.")
            computerPlay

        else:
            print("You win, " + userPlay + "destroys " + computerPlay + ".")
            computerLives -= 1
            print("You have ", userLives, "and your opponent now has ", computerLives, "left.")
            computerPlay

    elif userPlay == "Paper":
        if computerPlay == "Rock":
            print("You win, nice")
            computerLives -= 1
            print("You now have ", userLives, "left and your opponent has ", computerLives, "left.")
            computerPlay

        else:
            print("You lose.")
            userLives -= 1
            print("You now have ", userLives, "left and your opponent has ", computerLives, "left.")
            computerPlay

    elif userPlay == "Scissors":
        if computerPlay == "Rock":
            print("You lose.")
            userLives -= 1
            print("You now have ", userLives, "left and your opponent has ", computerLives, "left.")
            computerPlay

        else:
            print("You won.")
            computerLives -= 1
            print("You now have ", userLives, "left and your opponent has ", computerLives, "left.")
            computerPlay
