#include <iostream>
#include <leveldb/db.h>
#include <memory>

int main(int argc, char **argv)
{
    std::cout << "hello world!" << std::endl;

    leveldb::Options options;
    options.create_if_missing = true;

    leveldb::DB *dbptr = nullptr;
    leveldb::Status status = leveldb::DB::Open(options, "/tmp/testdb", &dbptr);
    if (!status.ok())
    {
        std::cout << "leveldb open failed:" << status.ToString() << std::endl;
        return 1;
    }
    // auto 析构
    std::unique_ptr<leveldb::DB> db(dbptr);

    leveldb::WriteOptions write_options;
    //
    write_options.sync = false;
    status = db->Put(write_options, "key1", "value1");
    if (!status.ok())
    {
        std::cout << "put error:" << status.ToString() << std::endl;
        return 1;
    }

    // 数据查询
    std::string result;
    status = db->Get(leveldb::ReadOptions(), "key1", &result);
    if (status.ok())
    {
        std::cout << "get key success:" << result << std::endl;
    }
    else if (status.IsNotFound())
    {
        std::cout << "key not found" << std::endl;
    }
    else
    {
        std::cout << "get error:" << status.ToString() << std::endl;
    }

    return 0;
}