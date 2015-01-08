# class Array
# 	include Comparable
# 	@@data = {'R'=>-1,'P'=>0,'S'=>1}
# 	def <=>(target)
# 		_item1,_item2 = self[-1],target[-1]
# 		if
# 	end
# end

class RockPaperScissors

  def self.data
  	["P","S","R"]
  end
  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    _item1,_item2 = player1[-1],player2[-1]
    if !self.data.include?(_item1) || !self.data.include?(_item2)
    	raise NoSuchStrategyError,"Strategy must be one of R,P,S"
    	return
    else
	    if _item1 == "P"
	    	return _item2 == "S" ? player2 : player1
	    end

		if _item1 == "S"
	    	return _item2 == "R" ? player2 : player1
	    end

		if _item1 == "R"
	    	return _item2 == "P" ? player2 : player1
	    end
    end
  end

  def self.tournament_winner(tournament)
    if tournament.size <= 2 and tournament[0][0].class == String
    	player1,player2 = tournament
    	self.winner(player1, player2)
    else
    	data = []
    	tournament.each do |single|
    		data << self.tournament_winner(single)
    	end
    	tournament_winner(data)
    end
  end

end
