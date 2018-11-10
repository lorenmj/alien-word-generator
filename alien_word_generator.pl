#!/usr/bin/perl
# random alien name generator

$howmany = shift;

@wordforms = ( "v", "cv", "vc", "cvc", "Cv", "vC", "cvC", "CvC", "Cvc", "vcv",
 "vcvc", "cvcvc", "cvcv", "vCvc", "vCvC", "Cvcvc", "CvCv", "CvCvC", "Cvcv",
 "CvcvC", "V", "cV", "Vc", "cVc", "CV", "VC", "CVC", "CVc", "VCv", "Vcv",
 "VcV", "vCvCv", "cVcV", "Vcvc", "VcVc", "CVcvc", "CVcVc", "CvcVc", "CVcv",
 "CvcV" );

@vowels = ( "a", "e", "i", "o", "u", "y" );

@consenants = ( "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p",
 "r", "s", "t", "v", "w", "x", "z" );

@doubleconsenants = ( "bh", "bl", "br", "ch", "ck", "cl", "cr", "cs",
 "ct", "dd", "dh", "dl", "dr", "dt", "fh", "fl", "fr", "ft", "ff", "gg", "gh",
 "gl", "gn", "gr", "gw", "hk", "hm", "hn", "hz", "lt", "lp", "ld", "lf", "lz",
 "ll", "mm", "mn", "nt", "nz", "pr", "pt", "ph", "pl", "pp", "qu", "rr", "rt",
 "rp", "rs", "rh", "rl", "rm", "rn", "sw", "sr", "st", "sp", "ss", "sh", "sk",
 "sl", "sm", "sn", "sc", "tr", "tt", "ts", "th", "vl", "ww", "wr", "wh", "xx",
 "xt", "zr", "zh", "zz" );

@doublevowels = ( "aa", "ee", "ea", "eu", "ey", "ii", "io", "iu", "oa", "oe",
 "oi", "oo", "ou", "oy", "ua", "ui", "uu", "uy", "ya", "yo", "yu", "yy" );


print "Generating ".$howmany." alien words.\n";
$hm = 0;
while ($hm < $howmany) {
 $word="";
 $i=0;
 $wf=$wordforms[int(rand($#wordforms))];
 while ($i < length($wf)) {
  $cur = "";
  #switch (substr($wf,$i,1)) {
  # case "c" { $cur=$consenants[int(rand($#consenants))]; }
  # case "C" { $cur=$doubleconsenants[int(rand($#doubleconsenants))]; }
  # case "v" { $cur=$vowels[int(rand($#vowels))]; }
  # case "V" { $cur=$doublevowels[int(rand($#doublevowels))]; }
  #}
  if (substr($wf,$i,1) eq 'c') {
    $cur = $consenants[int(rand($#consenants))];
  } elsif (substr($wf,$i,1) eq 'C') {
    $cur = $doubleconsenants[int(rand($#doubleconsenants))];
  } elsif (substr($wf,$i,1) eq 'v') {
    $cur = $vowels[int(rand($#vowels))];
  } elsif (substr($wf,$i,1) eq 'V') {
    $cur = $doublevowels[int(rand($#doublevowels))];
  } else {
    print "Not sure what happened..";
  }

  $word .= $cur;
  $i++;
 }

 print $word." ";
 $hm++;
}
print "\n";
