// ...
var sequences = readfasta(input_filename);

var kmers : domain(string);
var kmer_counts: [kmers] int;

for sequence in sequences {
  for i in 1..(sequence.length-k+1) {
    var kmer: string = sequence[i..#k];
    if !kmers.member(kmer) {
      kmer_counts[kmer] = 0;
    }
    kmer_counts[kmer] += 1;
  }
}
// ...
