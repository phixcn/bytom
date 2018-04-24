echo "Building bytomd to cmd/bytomd/bytomd for Win"
rm -f mining/tensority/*.go
cp mining/tensority/stlib/*.go mining/tensority/
g++ -o mining/tensority/stlib/cSimdTs.o -c mining/tensority/stlib/cSimdTs.cpp -std=c++11 -pthread -mavx2 -O3 -fopenmp -D_USE_OPENMP
go build $(BUILD_FLAGS) -o cmd/bytomd/bytomd cmd/bytomd/main.go
rm -f mining/tensority/*.go
cp mining/tensority/legacy/*.go mining/tensority/
