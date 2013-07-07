title = '**Shitty Ruby Game**'
lineWidth = 80
puts
puts title.center(lineWidth)
puts
puts                         'Welcome to Shitty Ruby Game!'.center(lineWidth) 
puts                   'Pick a character type and use your'.center(lineWidth)
puts                       'skills to overcome challenges!'.center(lineWidth)
puts
puts      'Which type of character would you like to play?'.center(lineWidth)
puts                          'Choose: "mage" or "warrior"'.center(lineWidth)
puts
charType = gets.chomp.downcase
puts
if charType == 'mage'
	fireball = Proc.new do |object|
		puts
		puts             'You close your eyes and clench your fists,'.center(lineWidth)
		puts           'feeling the familiar warmth of ancient magic'.center(lineWidth)
		puts                             'flow through your veins...'.center(lineWidth)
		puts
		puts      'Opening your hands, you manifest two spinning orbs'.center(lineWidth)
		puts 'of flame. The heat spreads, exciting the air aroud you.'.center(lineWidth)
		puts
		puts       'Your glowing red eyes open to meet your target...'.center(lineWidth)
		puts 
		puts ('In one smooth motion, you raise your arms towards the ' + object).center(lineWidth)
		puts            'and effortlessly release the fireballs from your grip.'.center(lineWidth)
		puts
		puts 'You watch as the glowing red and orange orbs quickly shrink away,'.center(lineWidth)
		puts  ('spiralling in a lethal double helix towards the ' + object + ',').center(lineWidth)
		puts                        'crackling and singing the air around them.'.center(lineWidth)
		puts
		puts ('In a violent burst, the fireballs crash headlong into the ' + object + ',').center(lineWidth)
		puts       'filling the area with heat and the blinding white glare of mage-fire.'.center(lineWidth)
		puts
		puts                               'You close your eyes again...'.center(lineWidth)
		puts            '...when you reopen them, they are no longer red'.center(lineWidth)
		puts ('and where the ' + object + ' was, only black ash remains.').center(lineWidth)
		puts
		puts         'The smell of smoke lingers in the air and your face'.center(lineWidth)
		puts 'is still warm from standing in view of the conflagration...'.center(lineWidth)
	end

	barrier = Proc.new do |object|
		if object[8,object.length] == 'self'
			puts                              'You clasp your palms together and focus '.center(lineWidth)
			puts                                'waves of energy inbetween your hands. '.center(lineWidth)
			puts
			puts                     'A small orb grows just in front of your hands as '.center(lineWidth)
			puts                  'you face them forward and spread apart your fingers.'.center(lineWidth)
			puts
			puts                     'It falls to the earth, shattering on the ground, '.center(lineWidth)
			puts               'letting out a small pillar of light from where it fell.'.center(lineWidth)
			puts
			puts                      'Springing forth from the ground, placing itself '.center(lineWidth)
			puts                    'directly in front of you, a large, thick prism of '.center(lineWidth)
			puts                'golden glass with a dim, yellow glow suddenly appears.'.center(lineWidth)
			puts
			puts                'It floats there, slowly bobbing up and down as rubble '.center(lineWidth) 
			puts                          'from the ground falls off its top and sides.'.center(lineWidth)
		else
			object = object[8, object.length]
			puts                              'You clasp your palms together and focus '.center(lineWidth)
			puts                                'waves of energy inbetween your hands. '.center(lineWidth)
			puts
			puts                     'A small orb grows just in front of your hands as '.center(lineWidth)
			puts                  'you face them forward and spread apart your fingers.'.center(lineWidth)
			puts 
			puts                       ("The orb shoots toward the #{object}, falling ").center(lineWidth)
			puts                        'just short of it and shattering on the ground.'.center(lineWidth)
		end
	end
	puts                          'You have chosen the way of magic!'.center(lineWidth)
	puts                       'As a mage, you will be able to wield'.center(lineWidth)
	puts                  'ancient powers to aide you in your quest!'.center(lineWidth)
	puts
	puts                 'You may use your spells by typing the name'.center(lineWidth)
	puts           'of the skill followed by the object of the cast.'.center(lineWidth)
	puts
	puts            'Example: To throw a fireball at a curtain, type'.center(lineWidth)
	puts                                         '"fireball curtain"'.center(lineWidth)
	puts
	puts   'Now, your turn. Choose a target and cast fireball on it.'.center(lineWidth)
	puts
	object = gets.chomp
	object = object[9, object.length]
	fireball.call object
	puts
	puts                                                  'Good job!'.center(lineWidth)
	puts                    'In addition to "fireball" you may also '.center(lineWidth)
	puts                      ' "barrier" and "rainbow fire bunny"  '.center(lineWidth)
	puts 
	puts                           'Go ahead and test another spell.'.center(lineWidth)
	puts
	object = gets.chomp
	puts
	barrier.call object
end