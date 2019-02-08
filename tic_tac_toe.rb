# Tic Tac Toe

class TicTacToe
    def initialize
        @top = Array.new
        @middle = Array.new
        @bottom = Array.new
        @x_play = ""
        @o_play = ""
    end
    
end

class PlayRound < TicTacToe

    puts "Remeber your choices are:"
    puts "topleft       topcenter       topright"
    puts "middleleft    middlecenter    middleright"
    puts "bottomleft    bottomcenter    bottomright"

    def player_x
        puts "Player X, please select a position:"
        @x_play = gets.chomp.downcase!
    end

    def player_o
        puts "Player O, please select a row:"
        @o_play = gets.chomp.downcase!
    end

end

class Board < TicTacToe

    def x_play
        if @x_play == "topleft"
            top[0] = "X"
        elsif @x_play == "topcenter"
            top[1] = "X"
        elsif @x_play == "topright"
            top[2] = "X"
        elsif @x_play == "middleleft"
            middle[0] = "X"
        elsif @x_play == "middlecenter"
            middle[1] = "X"
        elsif @x_play == "middleright"
            middle[2] = "X"
        elsif @x_play == "bottomleft"
            bottom[0] = "X"
        elsif @x_play == "bottomcenter"
            bottom[1] = "X"
        elsif @x_play == "bottomright"
            bottom[2] = "X"        
        else
            puts "incorrect input" 
        end 
    end

    def o_play
        if @o_play == "topleft"
            top[0] = "O"
        elsif @o_play == "topcenter"
            top[1] = "O"
        elsif @o_play == "topright"
            top[2] = "O"
        elsif @o_play == "middleleft"
            middle[0] = "O"
        elsif @o_play == "middlecenter"
            middle[1] = "O"
        elsif @o_play == "middleright"
            middle[2] = "O"
        elsif @o_play == "bottomleft"
            bottom[0] = "O"
        elsif @o_play == "bottomcenter"
            bottom[1] = "O"
        elsif @o_play == "bottomright"
            bottom[2] = "O"
        else
            puts "incorrect input" 
        end       
    end

    def display_board
        print @top
        puts ""
        print @middle
        puts ""
        print @bottom
        puts ""
    end

end

class CheckWin < TicTacToe
    def win
        if @top == ["X", "X", "X"] || @middle == ["X", "X", "X"] || @bottom == ["X", "X", "X"]
            puts x_wins
            exit
        elsif @top == ["O", "O", "O"] || @middle == ["O", "O", "O"] || @bottom == ["O", "O", "O"]
            puts o_wins
            exit
        elsif @top[0] == "X" && @middle[1] == "X" && @bottom[2] == "X"
            puts x_wins
            exit
        elsif @top[2] == "X" && @middle[1] == "X" && @bottom[0] == "X"
            puts x_wins
            exit
        elsif @top[0] == "O" && @middle[1] == "O" && @bottom[2] == "O"
            puts o_wins
            exit
        elsif @top[2] == "O" && @middle[1] == "O" && @bottom[0] == "O"
            puts o_wins
            exit
        else
            puts "On to the next round!"
        end
    end

    def x_wins
        puts "Congratulations!"
        puts "Xs win! Xs win! Xs win!"
    end

    def o_wins
        puts "Congratulations!"
        puts "Os win! Os win! Os win!"
    end

    PlayRound

end
