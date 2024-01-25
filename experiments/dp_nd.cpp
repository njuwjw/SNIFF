#include <iostream>
#include <iomanip>
#include <fstream>
#include <string>
using namespace std;

int main(int argc, char *argv[]){
	ifstream inp;
	inp.open(argv[1]);
	double N=0;
    double n=0;
    double time_n=0;
    double iter_n=0;
    double inter_iter_n=0;
	string line;

    bool success = false;
    while(getline(inp,line)){
        if(line.find("first feasible inter")!=string::npos){
            success = true;
            n++;
            string tmp = line.substr(line.find_last_of(":")+2);
            int interSampleCost = atoi(tmp.c_str());
            inter_iter_n += interSampleCost;
        }
        else if(line.find("first feasible sample")!=string::npos){
            string tmp = line.substr(line.find_last_of(":")+2);
            int sampleCost = atoi(tmp.c_str());
            iter_n += sampleCost;
        }
        else if(line.find("##@@!!TIME")!=string::npos){
            N++;
            if(success){
                string tmp = line.substr(line.find_last_of("TIME")+2);
                int timeCost = atoi(tmp.c_str());
                time_n += timeCost;
            }
            success = false;
        }
    }
	inp.close();
    double successRate = n/N;
    double avgTime = time_n/n;
    double avgOuterSample = iter_n/n;
    double avgInterSample = inter_iter_n/n;
    double avgSample = (100*(iter_n-1)+inter_iter_n)/n;
    cout<<argv[1]<<"\t"<<N<<"\t"<<fixed<<setprecision(2)<<"\t"<< successRate<<"\t"<<avgTime<<"\t"<<avgSample<<"\t\t"<<avgOuterSample<<"\t"<<avgInterSample<<endl;
	return 0;
}
