def get_class_level_factor(mlevel, klass)
  multiplier = 0
  case klass
    when 'Warrior'
      if (mlevel < 20)
				multiplier = 220;
			elsif (mlevel < 30)
				multiplier = 230;
			elsif (mlevel < 40)
				multiplier = 250;
			elsif (mlevel < 53)
				multiplier = 270;
			elsif (mlevel < 57)
				multiplier = 280;
			elsif (mlevel < 60)
				multiplier = 290;
			elsif (mlevel < 70)
				multiplier = 300;
			else 
				multiplier = 311;
		  end
    when 'Druid', 'Cleric', 'Shaman'
			if (mlevel < 70)
				multiplier = 150;
			else
				multiplier = 157;
		  end
		when 'Paladin', 'ShadowKnight'
		  if (mlevel < 35)
				multiplier = 210;
			elsif (mlevel < 45)
				multiplier = 220;
			elsif (mlevel < 51)
				multiplier = 230;
			elsif (mlevel < 56)
				multiplier = 240;
			elsif (mlevel < 60)
				multiplier = 250;
			elsif (mlevel < 68)
				multiplier = 260;
			else
				multiplier = 270;	
		  end
		when 'Monk', 'Bard', 'Rogue'
		  if (mlevel < 51)
				multiplier = 180;
			elsif (mlevel < 58)
				multiplier = 190;
			elsif (mlevel < 70)
				multiplier = 200;
			else
				multiplier = 210;
      end
		when 'Ranger'
		  if (mlevel < 58)
				multiplier = 200;
			elsif (mlevel < 70)
				multiplier = 210;
			else
				multiplier = 220;
		  end
		when 'Magician', 'Wizard', 'Necromancer', 'Enchanter'
		  if (mlevel < 70)
    		multiplier = 120;
    	else
    		multiplier = 127;
      end
    else
      if (mlevel < 35)
				multiplier = 210;
			elsif (mlevel < 45)
				multiplier = 220;
			elsif (mlevel < 51)
				multiplier = 230;
			elsif (mlevel < 56)
				multiplier = 240;
			elsif (mlevel < 60)
				multiplier = 250;
			else
				multiplier = 260;	
      end
  end
  return multiplier
end


def calc_base_hp(level, klass, sta)
  lm=get_class_level_factor(level, klass)
  post_255 = 0
  if (sta-255/2 > 0)
    post_255 = (sta-255/2)
  end
  return (5)+(level*lm/10) + (((sta-post_255)*level*lm/3000)) + ((post_255*level)*lm/6000)
end

def get_max_defense(klass, level)
  case klass
    when 'Wizard', 'Magician', 'Necromancer', 'Enchanter'
      return (level * 2.9).round
    when 'Warrior', 'ShadowKnight', 'Paladin'
      return (level * 4.2).round
    when 'Rogue', 'Bard', 'Ranger', 'Cleric', 'Druid', 'Shaman'
      return (level * 4.0).round
    when 'Monk'
      return (level * 4.6).round
  end
end
def get_acmod(level, agility)
	if(agility < 1 || level < 1)
		return(0);
	end
	if agility <=74
		if (agility == 1)
			return -24;
		elsif (agility <=3)
			return -23;
		elsif (agility == 4)
			return -22;
		elsif (agility <=6)
			return -21;
		elsif (agility <=8)
			return -20;
		elsif (agility == 9)
			return -19;
		elsif (agility <=11)
			return -18;
		elsif (agility == 12)
			return -17;
		elsif (agility <=14)
			return -16;
		elsif (agility <=16)
			return -15;
		elsif (agility == 17)
			return -14;
		elsif (agility <=19)
			return -13;
		elsif (agility == 20)
			return -12;
		elsif (agility <=22)
			return -11;
		elsif (agility <=24)
			return -10;
		elsif (agility == 25)
			return -9;
		elsif (agility <=27)
			return -8;
		elsif (agility == 28)
			return -7;
		elsif (agility <=30)
			return -6;
		elsif (agility <=32)
			return -5;
		elsif (agility == 33)
			return -4;
		elsif (agility <=35)
			return -3;
		elsif (agility == 36)
			return -2;
		elsif (agility <=38)
			return -1;
		elsif (agility <=65)
			return 0;
		elsif (agility <=70)
			return 1;
		elsif (agility <=74)
			return 5;
	  end
	elsif(agility <= 137)
		if (agility == 75)
			if (level <= 6)
				return 9;
			elsif (level <= 19)
				return 23;
			elsif (level <= 39)
				return 33;
			else
				return 39;
			end
		elsif (agility >= 76 && agility <= 79)
			if (level <= 6)
				return 10;
			elsif (level <= 19)
				return 23;
			elsif (level <= 39)
				return 33;
			else
				return 40;
			end
		elsif (agility == 80)
			if (level <= 6)
				return 11;
			elsif (level <= 19)
				return 24;
			elsif (level <= 39)
				return 34;
			else
				return 41;
			end
		elsif (agility >= 81 && agility <= 85)
			if (level <= 6)
				return 12;
			elsif (level <= 19)
				return 25;
			elsif (level <= 39)
				return 35;
			else
				return 42;
		  end
		elsif (agility >= 86 && agility <= 90)
			if (level <= 6)
				return 12;
			elsif (level <= 19)
				return 26;
			elsif (level <= 39)
				return 36;
			else
				return 42;
		  end
		elsif (agility >= 91 && agility <= 95)
			if (level <= 6)
				return 13;
			elsif (level <= 19)
				return 26;
			elsif (level <= 39)
				return 36;
			else
				return 43;
		  end
		elsif (agility >= 96 && agility <= 99)
			if (level <= 6)
				return 14;
			elsif (level <= 19)
				return 27;
			elsif (level <= 39)
				return 37;
			else 
				return 44;
		  end
		elsif (agility == 100 && level >= 7)
			if (level <= 19)
				return 28;
			elsif (level <= 39)
				return 38;
			else
				return 45;
		  end
		elsif (level <= 6)
			return 15;
		#level is >6
		elsif (agility >= 101 && agility <= 105)
			if (level <= 19)
				return 29;
			elsif (level <= 39)
				return 39;# not verified
			else
				return 45;
		  end
		elsif (agility >= 106 && agility <= 110)
			if (level <= 19)
				return 29;
			elsif (level <= 39)
				return 39;# not verified
			else
				return 46;
		  end
		elsif (agility >= 111 && agility <= 115)
			if (level <= 19)
				return 30;
			elsif (level <= 39)
				return 40;# not verified
			else
				return 47;
		  end
		elsif (agility >= 116 && agility <= 119)
			if (level <= 19)
				return 31;
			elsif (level <= 39)
				return 41;
			else
				return 47;
		  end
		elsif (level <= 19) 
				return 32;
		#level is > 19
		elsif (agility == 120)
			if (level <= 39)
				return 42;
			else
				return 48;
		  end
		elsif (agility <= 125)
			if (level <= 39)
				return 42;
			else
				return 49;
		  end
		elsif (agility <= 135)
			if (level <= 39)
				return 42;
			else
				return 50;
		  end
		else 
			if (level <= 39)
				return 42;
			else
				return 51;
		  end
	  end
	elsif(agility <= 300)
		if(level <= 6)
			if(agility <= 139)
				return(21);
			elsif(agility == 140)
				return(22);
			elsif(agility <= 145)
				return(23);
			elsif(agility <= 150)
				return(23);
			elsif(agility <= 155)
				return(24);
			elsif(agility <= 159)
				return(25);
			elsif(agility == 160)
				return(26);
			elsif(agility <= 165)
				return(26);
			elsif(agility <= 170)
				return(27);
			elsif(agility <= 175)
				return(28);
			elsif(agility <= 179)
				return(28);
			elsif(agility == 180)
				return(29);
			elsif(agility <= 185)
				return(30);
			elsif(agility <= 190)
				return(31);
			elsif(agility <= 195)
				return(31);
			elsif(agility <= 199)
				return(32);
			elsif(agility <= 219)
				return(33);
			elsif(agility <= 239)
				return(34);
			else
				return(35);
			end
		elsif(level <= 19) 
			if(agility <= 139)
				return(34);
			elsif(agility == 140)
				return(35);
			elsif(agility <= 145)
				return(36);
			elsif(agility <= 150)
				return(37);
			elsif(agility <= 155)
				return(37);
			elsif(agility <= 159)
				return(38);
			elsif(agility == 160)
				return(39);
			elsif(agility <= 165)
				return(40);
			elsif(agility <= 170)
				return(40);
			elsif(agility <= 175)
				return(41);
			elsif(agility <= 179)
				return(42);
			elsif(agility == 180)
				return(43);
			elsif(agility <= 185)
				return(43);
			elsif(agility <= 190)
				return(44);
			elsif(agility <= 195)
				return(45);
			elsif(agility <= 199)
				return(45);
			elsif(agility <= 219)
				return(46);
			elsif(agility <= 239)
				return(47);
			else
				return(48);
			end
		elsif(level <= 39)
			if(agility <= 139)
				return(44);
			elsif(agility == 140)
				return(45);
			elsif(agility <= 145)
				return(46);
			elsif(agility <= 150)
				return(47);
			elsif(agility <= 155)
				return(47);
			elsif(agility <= 159)
				return(48);
			elsif(agility == 160)
				return(49);
			elsif(agility <= 165)
				return(50);
			elsif(agility <= 170)
				return(50);
			elsif(agility <= 175)
				return(51);
			elsif(agility <= 179)
				return(52);
			elsif(agility == 180)
				return(53);
			elsif(agility <= 185)
				return(53);
			elsif(agility <= 190)
				return(54);
			elsif(agility <= 195)
				return(55);
			elsif(agility <= 199)
				return(55);
			elsif(agility <= 219)
				return(56);
			elsif(agility <= 239)
				return(57);
			else
				return(58);
			end
		else	#lvl >= 40
			if(agility <= 139)
				return(51);
			elsif(agility == 140)
				return(52);
			elsif(agility <= 145)
				return(53);
			elsif(agility <= 150)
				return(53);
			elsif(agility <= 155)
				return(54);
			elsif(agility <= 159)
				return(55);
			elsif(agility == 160)
				return(56);
			elsif(agility <= 165)
				return(56);
			elsif(agility <= 170)
				return(57);
			elsif(agility <= 175)
				return(58);
			elsif(agility <= 179)
				return(58);
			elsif(agility == 180)
				return(59);
			elsif(agility <= 185)
				return(60);
			elsif(agility <= 190)
				return(61);
			elsif(agility <= 195)
				return(61);
			elsif(agility <= 199)
				return(62);
			elsif(agility <= 219)
				return(63);
			elsif(agility <= 239)
				return(64);
			else
				return(65);
			end
		end
	else
		#seems about 21 agil per extra AC pt over 300...
	  return (65 + ((agility-300) / 21));
  end
	return 0;
end

def get_ac(acmod, defense, klass, item_ac, level, race)
  avoidance = (acmod + ((defense *  16)/9))
  avoidance = 0 if avoidance < 0
  
  mitigation  = 0
  if ['Wizard', 'Magician', 'Necromancer', 'Enchanter'].any? {|c| c == klass }
    mitigation = defense/4 + (item_ac+1)
    mitigation -= 4
  else
    mitigation = defense/3 + ((item_ac*4)/3)
    if klass == 'Monk'
      mitigation += level * 13/10
    end
  end
  displayed = ((avoidance+mitigation)*1000)/847
  if (race == 'Iksar')
		displayed += 12;
		iksarlevel = level
		iksarlevel -= 10;
		iksarlevel = 25 if (iksarlevel > 25)
		displayed += iksarlevel * 12 / 10 if (iksarlevel > 0)
	end
	displayed
end

def melee_skill_cap(level, klass)
  case klass
    when 'Cleric', 'Druid'
      return (level * 3.5).round 
    when 'Magician', 'Necromancer', 'Enchanter', 'Wizard'
      return (level * 2.2).round
  end
  return (level * 4).round
end

def offense_skill_cap(level, klass)
  case klass
    when 'Bard', 'Druid', 'Cleric'
      return (level * 4).round
    when 'Magician', 'Necromancer', 'Enchanter', 'Wizard'
      return (level * 2.8).round
    else
      return (level * 4.2).round
  end
end

def calc_max_attack(primary, total_str, item_attack, level, klass)
  offense = offense_skill_cap(level, klass)
  unless primary.blank? || primary.damage == 0
    skill = melee_skill_cap(level, klass)
  else
    skill = 0
  end
  if item_attack > 250
    item_attack = 250
  end
  raiting = ((item_attack * 1.342) + (offense * 1.345) + ((total_str - 66) * 0.9) + (skill * 2.69))
  if raiting < 10
    raiting = 10
  end
  return raiting.round
end


def calc_max_mana(item_mana, level, klass, int=0, wis=0)
  win_int = 0
  mind_lesser_factor, mind_facotor, max_mana = 0
  case klass
    when 'Magician', 'Necromancer', 'Enchanter', 'Wizard', 'Bard', 'ShadowKnight'
      if((( int - 199 ) / 2) > 0)
				mind_lesser_factor = ( int - 199 ) / 2;
			else
			  mind_lesser_factor = 0;
			end
			mind_factor = int - mind_lesser_factor
			if int > 100
				max_mana = (((5 * (mind_factor + 20)) / 2) * 3 * level / 40);
			else
				max_mana = (((5 * (mind_factor + 200)) / 2) * 3 * level / 100);
			end
    when 'Druid', 'Cleric', 'Shaman', 'Paladin'
      	if(((wis - 199 ) / 2) > 0)
  				mind_lesser_factor = ( wis - 199 ) / 2;
  			else
  				mind_lesser_factor = 0;
				end

  			mind_factor = wis - mind_lesser_factor;
  			if(wis > 100)
  				max_mana = (((5 * (mind_factor + 20)) / 2) * 3 * level / 40);
  			else
  				max_mana = (((5 * (mind_factor + 200)) / 2) * 3 * level / 100);
				end
    else
      return 0
  end
  
  return max_mana + item_mana
end


