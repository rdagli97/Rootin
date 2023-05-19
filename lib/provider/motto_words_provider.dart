import 'package:flutter/material.dart';

class MottoProvider extends ChangeNotifier {
  final List<List<String>> mottoWordsList = [
    [
      "assets/Mike_Tyson.png",
      "God lets everything happen for a reason. It's all a learning process, and you have to go from one level to another",
      "- Mike tyson"
    ],
    [
      "assets/Mike_Tyson.png",
      "I'm a dreamer. I have to dream and reach for the stars, and if I miss a star then I grab a handful of clouds.",
      "- Mike tyson"
    ],
    [
      "assets/Kobe_Bryant.png",
      "Everything negative - pressure, challenges - is all an opportunity for me to rise",
      "- Kobe Bryant"
    ],
    [
      "assets/Kobe_Bryant.png",
      "The most important thing is to try and inspire people so that they can be great in whatever they want to do",
      "- Kobe Bryant"
    ],
    [
      "assets/Kobe_Bryant.png",
      "I'll do whatever it takes to win games, whether it's sitting on a bench waving a towel, handing a cup of water to a teammate, or hitting the game-winning shot. ",
      "- Kobe Bryant"
    ],
    [
      "assets/Kobe_Bryant.png",
      "I focus on one thing and one thing only - that's trying to win as many championships as I can",
      "- Kobe Bryant"
    ],
    [
      "assets/Floyd_Mayweather_Jr.png",
      "You have good days, you have bad days. But the main thing is to grow mentally",
      "- Floyd Mayweather, Jr."
    ],
    [
      "assets/1400-1500.png",
      "The past cannot be changed. The future is yet in your power",
      "Unknown"
    ],
    [
      "assets/Zig_Ziglar.png",
      "What you get by achieving your goals is not as important as what you become by achieving your goals",
      "- Zig Ziglar"
    ],
    [
      "assets/George_Lucas.png",
      "You simply have to put one foot in front of the other and keep going. Put blinders on and plow right ahead",
      "- George Lucas"
    ],
    [
      "assets/Ayn_Rand.png",
      "A creative man is motivated by the desire to achieve, not by the desire to beat others",
      "- Ayn Rand"
    ],
    [
      "assets/Daniel_Webster.png",
      "There is always room at the top",
      "- Daniel Webster"
    ],
    [
      "assets/Les_Brown.png",
      "You are never too old to set another goal or to dream a new dream",
      "- Les Brown"
    ],
    [
      "assets/Carol_Burnett.png",
      "Only I can change my life. No one can do it for me",
      "- Carol Burnett"
    ],
    [
      "assets/Robert_H._Schulle.png",
      "Problems are not stop signs, they are guidelines",
      "- Robert H. Schuller"
    ],
    [
      "assets/John_F._Kennedy.png",
      "Things do not happen. Things are made to happen",
      "- John F. Kennedy"
    ],
    [
      "assets/Bo_Jackson.png",
      "Set your goals high, and don't stop till you get there",
      "- Bo Jackson"
    ],
    [
      "assets/Maya_Angelou.png",
      "We may encounter many defeats but we must not be defeated",
      "- Maya Angelou"
    ],
    [
      "assets/Dalai_Lama.png",
      "Be kind whenever possible. It is always possible",
      "- Dalai Lama"
    ],
    [
      "assets/Walter_Elliot.png",
      "Perseverance is not a long race; it is many short races one after the other",
      "- Walter Elliot"
    ],
    [
      "assets/Sam_Levenson.png",
      "Don't watch the clock; do what it does. Keep going",
      "- Sam Levenson"
    ],
    [
      "assets/Rabindranath_Tagore.png",
      "You can't cross the sea merely by standing and staring at the water",
      "- Rabindranath Tagore"
    ],
    [
      "assets/Franklin_D._Roosevelt.png",
      "When you reach the end of your rope, tie a knot in it and hang on",
      "- Franklin D. Roosevelt"
    ],
    [
      "assets/Ralph_Marston.png",
      "What you do today can improve all your tomorrows",
      "- Ralph Marston"
    ],
    [
      "assets/Jack_London.png",
      "You can't wait for inspiration. You have to go after it with a club",
      "- Jack London"
    ],
    [
      "assets/Philip_Sidney.png",
      "Either I will find a way, or I will make one",
      "- Philip Sidney"
    ],
    [
      "assets/Helen_Keller.png",
      "Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence",
      "- Helen Keller"
    ],
    [
      "assets/Simone_de_Beauvoir.png",
      "Change your life today. Don't gamble on the future, act now, without delay",
      "- Simone de Beauvoir"
    ],
    [
      "assets/Norman_Vincent_Peale.png",
      "Believe in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers you cannot be successful or happy",
      "- Norman Vincent Peale"
    ],
    [
      "assets/Nelson_Mandela.png",
      "It always seems impossible until it's done",
      "- Nelson Mandela"
    ],
    [
      "assets/Og_Mandino.png",
      "Failure will never overtake me if my determination to succeed is strong enough",
      "- Og Mandino"
    ],
    [
      "assets/Ken_Venturi.png",
      "I don't believe you have to be better than everybody else. I believe you have to be better than you ever thought you could be",
      "- Ken Venturi"
    ],
    [
      "assets/William_James.png",
      "Act as if what you do makes a difference. It does",
      "- William James"
    ],
    [
      "assets/Benjamin_Jowett.png",
      "Never retreat. Never explain. Get it done and let them howl",
      "- Benjamin Jowett"
    ],
    [
      "assets/William_Blake.png",
      "No bird soars too high if he soars with his own wings",
      "- William Blake"
    ],
    [
      "assets/Aldous_Huxley.png",
      "There is only one corner of the universe you can be certain of improving, and that's your own self",
      "- Aldous Huxley"
    ],
    [
      "assets/Babe_Ruth.png",
      "You just can't beat the person who never gives up",
      "- Babe Ruth"
    ],
    [
      "assets/Tony_Robbins.png",
      "Setting goals is the first step in turning the invisible into the visible",
      "- Tony Robbins"
    ],
    [
      "assets/Leo_Buscaglia.png",
      "Your talent is God's gift to you. What you do with it is your gift back to God",
      "- Leo Buscaglia"
    ],
    [
      "assets/Benjamin_Franklin.png",
      "By failing to prepare, you are preparing to fail",
      "- Benjamin Franklin"
    ],
    [
      "assets/Jim_Rohn.png",
      "Either you run the day or the day runs you",
      "- Jim Rohn"
    ],
    [
      "assets/Theodore_Roosevelt.png",
      "Keep your eyes on the stars, and your feet on the ground",
      "- Theodore Roosevelt"
    ],
    [
      "assets/Arthur_Ashe.png",
      "Start where you are. Use what you have. Do what you can",
      "- Arthur Ashe"
    ],
    [
      "assets/Amelia_Earhart.png",
      "The most effective way to do it, is to do it",
      "- Amelia Earhart"
    ],
    [
      "assets/Lao_Tzu.png",
      "Do the difficult things while they are easy and do the great things while they are small. A journey of a thousand miles must begin with a single step",
      "- Lao Tzu"
    ],
    [
      "assets/Elon_Mask.png",
      "When something is important enough, you do it even if the odds are not in your favor",
      "- Elon Musk"
    ],
    [
      "assets/Charles_R._Swindoll.png",
      "Life is 10% what happens to you and 90% how you react to it",
      "- Charles R. Swindoll"
    ],
    [
      "assets/Thomas_Edison.png",
      "Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time",
      "- Thomas A. Edison"
    ],
    [
      "assets/Don_Miguel_Ruiz.png",
      "Be Impeccable With Your Word. Speak with integrity. Say only what you mean. Avoid using the word to speak against yourself or to gossip about others. Use the power of your word in the direction of truth and love",
      "- Don Miguel Ruiz"
    ],
    [
      "assets/Abdul_Kalam.png",
      "We should not give up and we should not allow the problem to defeat us",
      "- A. P. J. Abdul Kalam"
    ],
    [
      "assets/Wayne_Dyer.png",
      "Be miserable. Or motivate yourself. Whatever has to be done, it's always your choice",
      "- Wayne Dyer"
    ],
    [
      "assets/W._Clement_Ston.png",
      "Aim for the moon. If you miss, you may hit a star",
      "- W. Clement Stone"
    ],
    [
      "assets/Bradley_Whitford.png",
      "Infuse your life with action. Don't wait for it to happen. Make it happen. Make your own future. Make your own hope. Make your own love. And whatever your beliefs, honor your creator, not by passively waiting for grace to come down from upon high, but by doing what you can to make grace happen... yourself, right now, right down here on Earth",
      "- Bradley Whitford"
    ],
    [
      "assets/Epictetus.png",
      "The key is to keep company only with people who uplift you, whose presence calls forth your best",
      "- Epictetus"
    ],
    [
      "assets/Nikos_Kazantzakis.png",
      "In order to succeed, we must first believe that we can",
      "- Nikos Kazantzakis"
    ],
    [
      "assets/Johann_Wolfgang_von_Goethe.png",
      "Knowing is not enough; we must apply. Willing is not enough; we must do",
      "- Johann Wolfgang von Goethe"
    ],
    [
      "assets/Pope_John_XXIII.png",
      "Consult not your fears but your hopes and your dreams. Think not about your frustrations, but about your unfulfilled potential. Concern yourself not with what you tried and failed in, but with what it is still possible for you to do",
      "- Pope John XXIII"
    ],
    [
      "assets/Mark_Twain.png",
      "The secret of getting ahead is getting started",
      "- Mark Twain"
    ],
    [
      "assets/1400-1500.png",
      "A good plan violently executed now is better than a perfect plan executed next week",
      "Unknown"
    ],
    [
      "assets/Eleanot_Roosevelt.png",
      "With the new day comes new strength and new thoughts",
      "- Eleanor Roosevelt"
    ],
    [
      "assets/Walt_Disney.png",
      "If you can dream it, you can do it",
      "- Walt Disney"
    ],
    [
      "assets/Samuel_Beckett.png",
      "Ever tried. Ever failed. No matter. Try Again. Fail again. Fail better",
      "- Samuel Beckett"
    ],
    [
      "assets/Aristotle.png",
      "Quality is not an act, it is a habit",
      "- Aristotle"
    ],
    [
      "assets/H._G._Wells.png",
      "If you fell down yesterday, stand up today",
      "- H. G. Wells"
    ],
    [
      "assets/St._Jerome.png",
      "Good, better, best. Never let it rest. 'Til your good is better and your better is best",
      "- St. Jerome"
    ],
    [
      "assets/Confucius.png",
      "It does not matter how slowly you go as long as you do not stop",
      "- Confucius"
    ],
    [
      "assets/Michael_Jordan.png",
      "I’ve failed over and over and over again in my life. And that is why I succeed",
      "– Michael Jordan"
    ],
    [
      "assets/Mason_Cooley.png",
      "Procrastination makes easy things hard, hard things harder",
      "– Mason Cooley"
    ],
    [
      "assets/John_Quincy_Adams.png",
      "Patience and perseverance have a magical effect before which difficulties disappear and obstacles vanish",
      "– John Quincy Adams"
    ],
    [
      "assets/Honoré_de_Balzac.png",
      "All happiness depends on courage and work",
      "– Honoré de Balzac"
    ],
    [
      "assets/Pelé.png",
      "Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are going or learning to do",
      "– Pelé"
    ],
    [
      "assets/Winston_Churchill.png",
      "If you’re going through hell, keep going",
      "– Winston Churchill"
    ],
    [
      "assets/Richard_Branson.png",
      "You don’t learn to walk by following rules. You learn by doing, and falling over",
      "– Richard Branson"
    ],
    [
      "assets/William_Faulkner.png",
      "You cannot swim for new horizons until you have the courage to lose sight of the shore",
      "– William Faulkner"
    ],
    [
      "assets/Thomas_Edison.png",
      "Many of life’s failures are people who did not realize how close they were to success when they gave up",
      "– Thomas Edison"
    ],
    [
      "assets/marva_collins.png",
      "Success doesn’t come to you, you go to it",
      "– Marva Collins"
    ],
    [
      "assets/dwayne_jognson.png",
      "Success isn’t overnight. It’s when every day you get a little better than the day before. It all adds up",
      "– Dwayne Johnson"
    ],
    [
      "assets/Henry_Ford.png",
      "Failure is the opportunity to begin again more intelligently",
      " – Henry Ford"
    ],
    [
      "assets/Winston_Churchill.png",
      "Success is not final, failure is not fatal: it is the courage to continue that counts",
      "– Winston Churchill"
    ],
    [
      "assets/malcolm_gladwell.png",
      "If you work hard enough and assert yourself, and use your mind and imagination, you can shape the world to your desires",
      "– Malcolm Gladwell"
    ],
  ];

  void shuffleWordList() {
    mottoWordsList.shuffle();
    notifyListeners();
  }
}
