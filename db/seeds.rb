LoveLanguage.delete_all
Personality.delete_all
Student.delete_all
StudLoveLanguage.delete_all

luis = Student.create(:first_name=>'Luis', last_name:'Fernandez', industry_before_flatiron: 'Policy', siblings: false, pets: false)
solomon = Student.create(:first_name=>'Solomon', last_name:'Fantahun', industry_before_flatiron: 'Pharmaceuticals', siblings: true, pets: false)


campaigner = Personality.create(:personality_name=>'Campaigner', :personality_code => 'ENFP')
protagonist = Personality.create(:personality_name=>'Protagonist', :personality_code => 'ENFJ')
architect = Personality.create(:personality_name=>'Architect', :personality_code => 'INTJ')
logician = Personality.create(:personality_name=>'Logician', :personality_code => 'INTP')
logistician = Personality.create(:personality_name=>'Logistician', :personality_code => 'ISTJ')
commander = Personality.create(:personality_name=>'Commander', :personality_code => 'ENTJ')
debater = Personality.create(:personality_name=>'Debater', :personality_code => 'ENTP')
advocate = Personality.create(:personality_name=>'Advocate', :personality_code => 'INFJ')
mediator = Personality.create(:personality_name=>'Mediator', :personality_code => 'INFP')
defender = Personality.create(:personality_name=>'Defender', :personality_code => 'ISFJ')
executive = Personality.create(:personality_name=>'Executive', :personality_code => 'ESTJ')
consul = Personality.create(:personality_name=>'Consul', :personality_code => 'ESFJ')
virtuoso = Personality.create(:personality_name=>'Virtuoso', :personality_code => 'ISTP')
adventurer = Personality.create(:personality_name=>'Adventurer', :personality_code => 'ISFP')
entrepreneur = Personality.create(:personality_name=>'Entrepreneur', :personality_code => 'ESTP')
entertainer = Personality.create(:personality_name=>'Entertainer', :personality_code => 'ESFP')

words = LoveLanguage.create(:name => "Words of Affirmation", :description => "Expressing affection, praise, appreciation and/or compliments through spoken words or written mediums (notes, texts, letters, cards, etc)")
touch = LoveLanguage.create(:name => "Touch", :description => "Expressing gratitude with physical touch towards another person. This can range from a friendly hug and/or handshake, or with intimate partners cuddling, etc.")
gifts = LoveLanguage.create(:name => "Gifts", :description => "Gifting is the symbolic gesture of saying thank you and showing appreciation/love. Whether the gift is big or small, expensive or inexpensive, it’s about the thought behind the gift.")
acts = LoveLanguage.create(:name => "Acts of Service", :description => "Actions that express gratitude and appreciation. Can be something as simple as holding the door, bringing you flowers/coffee (can be tied to a gift), helping out with chores or errands. This love language is rooted in actions.")
quality_time = LoveLanguage.create(:name => "Quality time", :description => "Expressing appreciation and love through undivided, focused attention and time spent together.")



luis.personality = campaigner
solomon.personality = logistician





