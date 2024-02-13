#include <iostream>
#include "ap_axi_sdata.h"
#include "hls_stream.h"
using namespace std;

void MLP(hls::stream< ap_axis<32,2,5,6> > &A,
	     hls::stream< ap_axis<32,2,5,6> > &B);

int main()
{
  hls::stream<ap_axis<32,2,5,6> > A, B;
  ap_axis<32,2,5,6> tmp, tmp1;

  float input[32] = { 0.0283599, 0.0751432, 0.697528, 0.617102, -0.673929, 0.750487, -0.125162, -0.91279, 0.358302, 0.0858541, 0.306774, 0.89656, 0.0148814, 0.623378, 0.693388, -0.519103, -0.486651, -0.945579, 0.0180788, -0.900228, 0.373677, 0.924978, -0.163106, 0.026816, 0.0220596, 0.881906, -0.214575, 0.198231, 0.754275, 0.973937, 0.199384, 0.48059,};

  for(int j=0;j<32;j++) {
	  tmp.data = input[j];
	  if(j==31) {
		  tmp.last = 1;
	  }
	  else {
		  tmp.last = 0;
	  }
	  A.write(tmp);
  }

  MLP(A, B);

  for (int j=0; j<4; j++) {
	  B.read(tmp1);
	  cout << "result is " << tmp1.data << endl;
  }

  return 0;
}
