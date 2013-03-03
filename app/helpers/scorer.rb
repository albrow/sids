# p001hello.rb  
require 'rubygems'
require 'json'
require 'net/http'



def sample_parse()
	sample = '{"menu": {"id": "file","value": "File","popup": {"menuitem": [{"value": "New", "onclick": "CreateNewDoc()"},{"value": "Open", "onclick": "OpenDoc()"},{"value": "Close", "onclick": "CloseDoc()"}]}}}'
	sampleUser = '{"round": [{"picks": [1,2,3]},{"picks": [1,2,3]}]}'
	sampleOfficial = '{"round": [{"picks": [1,2,3]},{"picks": [1,2,3]}]}'
	result = JSON.parse(sample);
	puts result['menu']['popup']['menuitem'][1]

	puts result.length
	puts result['menu'].length
end

#Returns a ruby hash filled with the official bracket
def get_official_bracket(url)


end

#Returns a ruby hash filled with the user bracket
def get_user_bracket(url)


end

#returns the score of the bracket
def score_bracket(userURL, officialURL)
	score = 0
	sampleUser = '{"round": [{"picks": [1,2,3]},{"picks": [1,2,3]}]}'
	sampleOfficial = '{"round": [{"picks": [1,2,3]},{"picks": [1,5,3]}]}'
	user_bracket = JSON.parse(sampleUser)
	official_bracket = JSON.parse(sampleOfficial)
	#user_bracket = get_user_bracket(userURL)
	#official_bracket = get_official_bracket(officialURL)

	rounds = user_bracket['round'].length 
	
	 if user_bracket['round'].length != official_bracket['round'].length
      raise "ERROR: The user bracket and official bracket have a different number of rounds"
   	end

	for i in 1..rounds
   		user_picks = user_bracket['round'][i-1]['picks']
   		official_picks = official_bracket['round'][i-1]['picks']
   		picks = user_picks.length
   		if user_bracket['round'].length != official_bracket['round'].length
     		 raise "ERROR: In round" + i + " the user and official bracket have a different number of games"
   		end
   		for j in 1..picks
   			if user_picks[j-1] == official_picks[j-1]
   				score+=i
   				puts score
   			end
   		end
   	end
   	return score
end



#Testintg
#ans = score_bracket()
#puts ans

