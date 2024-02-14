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

  float input[48] = {0.273161657, 0.349160246, 0.6460988, 0.029122231, 0.444351266, 0.222782642, 0.207148008, 0.505886584, 0.675018485, 0.803802681, 0.715239157, 0.627961515, 0.519162049, 0.363436466, 0.456383583, 0.276303229, 0.480240993, 0.615752692, 0.557788426, 0.416374069, 0.199555895, 0.430981913, 0.317010201, 0.202329882, 0.300134831, 0.417119658, 0.420197452, 0.058340637, 0.396209448, 0.31648072, 0.262195599, 0.120288609, 0.474086501, 0.515329753, 0.4924506, 0.295636998, 0.213328683, 0.290823809, 0.201122114, 0.183861975, 0.577980726, 0.552382407, 0.532900758, 0.276554743, 0.195396682, 0.54918847, 0.195891168, 0.246948337,
    };

  // multiply 10000000 and cast to int since DMA does not support float
  for (int i = 0; i < 48; i++) {
	  input[i] *= 10000000;
	  input[i] = int(input[i]);
	  //cout << input[i] << endl;
  }

  for(int j=0;j<48;j++) {
	  tmp.data = input[j];
	  if(j==47) {
		  tmp.last = 1;
	  }
	  else {
		  tmp.last = 0;
	  }
	  A.write(tmp);
  }

  MLP(A, B);

  for (int j=0; j<5; j++) {
	  B.read(tmp1);
	  //cout << "result is " << tmp1.data/10000000.0 << endl;
  }

  return 0;
}
