def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split().first()
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["name"] if contestant["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0.0
  data[season].each do |contestant|
    sum += contestant["age"].to_i
  end
  (sum / data[season].count).round

      
end
