#include<iostream>
#include<leveldb/db.h>
#include<leveldb/write_batch.h>
#include<memory>


int main(int argc, char **argv){
    std::cout<<"hello world!"<<std::endl;

    leveldb::DB *dbptr = nullptr;
    leveldb::Options options;
    options.create_if_missing = true;


    leveldb::Status status = leveldb::DB::Open(options, "/tmp/testdb", &dbptr);
    if (status.ok()) {
        std::cout<<"leveldb open suceess!"<<status.ToString()<<std::endl;
    }else{
        std::cout<<"leveldb open failed!"<<status.ToString()<<std::endl;
    }

    std::unique_ptr<leveldb::DB> db(dbptr);
    leveldb::WriteOptions write_options;
    write_options.sync = true;

    leveldb::WriteBatch batch;

    batch.Put("key1", "value1");
    batch.Put("key2", "value2");
    batch.Put("key3", "value3");
    batch.Put("key4", "value4");

    batch.Delete("key4");

    status = db->Write(write_options, &batch);


    

    return 0;
}