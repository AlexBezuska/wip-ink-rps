VAR player_pick = "nothing"
VAR rival_pick = "nothing"

VAR hand_action = "chooses"

-> rock_paper_scissors

=== rock_paper_scissors ===

~ hand_action =  "{~ throws out a mean| throws down a sick| confidently displays a|tosses out a sick| flings forth a| whips out a | proudly displays a| makes thier pick, a pheonomenal| hammers down a| summons forth a| reveals their choice to be| releases a splended| releases a stupendous | }"
+ [Rock] 
    ~ player_pick = "Rock"
    Nice choice, let's go!
    ->computer_pick
+ [Paper]
    ~ player_pick = "Paper"
    Nice choice, let's go!
    ->computer_pick
+ [Scissors]
    ~ player_pick = "Scissors"
    Nice choice, let's go!
    ->computer_pick

=== computer_pick ===
PLAYER {hand_action} <b>{player_pick}</b>
~ rival_pick = "{~ Rock|Paper|Scissors}"
RIVAL chose <b>{rival_pick}</b> 
-> results


=== results ===
-AND...
{
    - rival_pick == player_pick:
        It's a Tie! 
        
    - rival_pick == "Rock" && player_pick == "Scissors":
        You Loose! 
    - rival_pick == "Rock" && player_pick == "Paper":
        You Win! 
        
    - rival_pick == "Paper" && player_pick == "Scissors":
        You Win! 
    - rival_pick == "Paper" && player_pick == "Rock":
        You Loose! 
 
    - rival_pick == "Scissors" && player_pick == "Rock":
        You Win! 
    - rival_pick == "Scissors" && player_pick == "Paper":
        You Loose! 
}
-> rock_paper_scissors




-> END

