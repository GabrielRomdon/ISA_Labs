#include<stdio.h>
#include<stdlib.h>

#define N 1 /// order of the filter
#define NB 14  /// number of bits
#define R 7  /// number of bits

const int b0 = 3447; /// coefficient b0
const int b[N]={3447}; /// b array
const int a[N]={1298}; /// a array (*******removed the minus bc of different notation)
FILE *fp, *fp1, *fp2;
/// Perform fixed point filtering assuming direct form II
/// x is the new input sample
/// returns the new output sample
int myfilter(int x)
{
  static int sw[N]; /// w shift register
  static int first_run = 0; /// for cleaning the shift register
  int i; /// index
  int w; /// intermediate value (w)
  int y; /// output sample
  int fb, ff; /// feed-back and feed-forward results
	

  /// clean the buffer
  if (first_run == 0)
  {
    first_run = 1;
    for (i=0; i<N; i++)
      sw[i] = 0;
  }

  /// compute feed-back and feed-forward
  fb = 0;
  ff = 0;
  for (i=0; i<N; i++)
  {
    	fb -= (sw[i]*a[i]) >> (NB+R-1);
    	ff += (sw[i]*b[i]) >> (NB+R-1);
	fprintf(fp1,"%d\n", fb);
	fprintf(fp2,"%d\n", ff);
  }

  /// compute intermediate value (w) and output sample
  w = x - fb;
  y = (w*b0) >> (NB+R-1);
  y += ff;
fprintf(fp,"%d\n", w);
  /// update the shift register
  for (i=N-1; i>0; i--)
    sw[i] = sw[i-1];
  sw[0] = w;

  return y << (R);
}

int main (int argc, char **argv)
{
  FILE *fp_in;
  FILE *fp_out;
	
	fp=fopen("w_val.txt", "w");
	fp1=fopen("fb_val.txt", "w");
	fp2=fopen("ff_val.txt", "w");

  int x;
  int y;

  /// check the command line
  if (argc != 3)
  {
    printf("Use: %s <input_file> <output_file>\n", argv[0]);
    exit(1);
  }

  /// open files
  fp_in = fopen(argv[1], "r");
  if (fp_in == NULL)
  {
    printf("Error: cannot open %s\n", argv[1]);
    exit(2);
  }
  fp_out = fopen(argv[2], "w");

  /// get samples and apply filter
  fscanf(fp_in, "%d", &x);
  do{
    y = myfilter(x);
    fprintf(fp_out,"%d\n", y);
    fscanf(fp_in, "%d", &x);
  } while (!feof(fp_in));

  fclose(fp_in);
  fclose(fp_out);
fclose (fp);
fclose (fp1);
fclose (fp2);
  return 0;

}
