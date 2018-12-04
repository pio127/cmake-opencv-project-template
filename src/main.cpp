#include "functions.h"
#include "opencv2/core.hpp"

int main(){
	cv::Mat a = cv::Mat::eye(640, 640, CV_8UC1)*255;
	show(a);
	//cv::imshow("Test", a);
	cv::waitKey(0);
	return 0;
}