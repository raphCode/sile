SILE.hyphenator.languages["hi"] = {};
SILE.hyphenator.languages["hi"].patterns =
   {
"2‍2",
-- Break on both sides of ZERO-WIDTH NON JOINER  (U+200C)
"1‌1",
-- Break before or after any independent vowel.
"अ1",
"आ1",
"इ1",
"ई1",
"उ1",
"ऊ1",
"ऋ1",
"ॠ1",
"ऌ1",
"ॡ1",
"ए1",
"ऐ1",
"ओ1",
"औ1",
-- Break after any dependent vowel but not before.
"ा1",
"ि1",
"ी1",
"ु1",
"ू1",
"ृ1",
"ॄ1",
"ॢ1",
"ॣ1",
"े1",
"ै1",
"ो1",
"ौ1",
-- Break before or after any consonant.
"1क",
"1ख",
"1ग",
"1घ",
"1ङ",
"1च",
"1छ",
"1ज",
"1झ",
"1ञ",
"1ट",
"1ठ",
"1ड",
"1ढ",
"1ण",
"1त",
"1थ",
"1द",
"1ध",
"1न",
"1प",
"1फ",
"1ब",
"1भ",
"1म",
"1य",
"1र",
"1ल",
"1ळ",
"1व",
"1श",
"1ष",
"1स",
"1ह",
-- Do not break before chandrabindu, anusvara, visarga, avagraha
-- and accents.
"2ँ1",
"2ं1",
"2ः1",
"2ऽ1",
"2॑1",
"2॒1",
-- Do not break either side of virama (may be within conjunct).
"2्2",
   };
