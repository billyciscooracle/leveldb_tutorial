#include<iostream>
#include<leveldb/db.h>



int main(int argc, char **argv){
    std::cout<<"hello world!"<<std::endl;

    leveldb::Options options;
    options.create_if_missing = true;

    leveldb::DB *db;
    leveldb::Status status = leveldb::DB::Open(options, "/tmp/testdb", &db);
    if (!status.ok()) {
        std::cout<<"leveldb open suceess!"<<status.ToString()<<std::endl;
    }else{
        std::cout<<"leveldb open failed!"<<status.ToString()<<std::endl;
    }

    if(db){
        delete db;
    }


/**

    std::string key = "key";
    std::string value = "value";
    status = db->Put(leveldb::WriteOptions(), key, value);
    if (!status.ok()) {
        std::cout<<"put error!"<<status.ToString()<<std::endl;
    }
    std::string result;
    status = db->Get(leveldb::ReadOptions(), key, &result);
    if (!status.ok()) {
        std::cout<<"get error!"<<status.ToString()<<std::endl;
    }

 * 
*/
}