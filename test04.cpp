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


    /**
    leveldb::Iterator *iter = db->NewIterator(leveldb::ReadOptions());
    delete iter;
    return 0;
    */
   // db->Put(write_options, "key1", "value1");
   //使用迭代器的例子
    std::unique_ptr <leveldb::Iterator> iter(db->NewIterator(leveldb::ReadOptions()));
    iter->SeekToFirst();
    while (iter->Valid()) {
        std::cout<<iter->key().ToString()<<" "<<iter->value().ToString()<<std::endl;
        iter->Next();
    }

   // std::unique_ptr <leveldb::Iterator> iter(db->NewIterator(leveldb::ReadOptions()));
    iter->SeekToFirst();
    for(;iter->Valid(); iter->Next()){
        auto key = iter->key().ToString();
        auto value = iter->value().ToString();
        std::cout<<"key="<<key<<" "<<"value="<<value<<std::endl;
    }
    std::cout<<"-----------------------------------"<<std::endl;
    for(iter->SeekToLast(); iter->Valid();iter->Prev()){
        auto key = iter->key().ToString();
        auto value = iter->value().ToString();
        std::cout<<"key="<<key<<" "<<"value="<<value<<std::endl;
    }

    std::cout<<"-----------------------------------"<<std::endl;
    for(iter->Seek("key2"); iter->Valid();iter->Next()){
        auto key = iter->key().ToString();
        auto value = iter->value().ToString();
        std::cout<<"key="<<key<<" "<<"value="<<value<<std::endl;
    }

}