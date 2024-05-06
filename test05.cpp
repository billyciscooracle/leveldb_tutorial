#include <iostream>
#include <leveldb/db.h>
#include <leveldb/write_batch.h>
#include <leveldb/comparator.h>
#include <memory>


class ReversedBytewiseComparator:public leveldb::Comparator
{
public:
    int Compare(const leveldb::Slice &a, const leveldb::Slice &b) const 
    {
        return leveldb::BytewiseComparator()->Compare(b, a);
    }

    const char *Name() const 
    {
        return "leveldb.ReverseBytewiseComparator";
    }
    void FindShortestSeparator(std::string *start,
                               const leveldb::Slice &limit) const {
                                leveldb::BytewiseComparator()->FindShortestSeparator(start, limit);
                               }

    void FindShortSuccessor(std::string *key) const  {
         leveldb::BytewiseComparator()->FindShortSuccessor(key);
    }

};



class ReversedBytewiseComparator;

int main(int argc, char **argv)
{
    std::cout << "hello world!" << std::endl;

    leveldb::DB *dbptr = nullptr;
    leveldb::Options options;
    options.create_if_missing = true;
    // options.comparator = leveldb::BytewiseComparator();
    options.comparator = new ReversedBytewiseComparator();

    leveldb::Status status = leveldb::DB::Open(options, "/tmp/testdb2", &dbptr);
    if (status.ok())
    {
        std::cout << "leveldb open suceess!" << status.ToString() << std::endl;
        return 0;
    }
    else
    {
        std::cout << "leveldb open failed!" << status.ToString() << std::endl;
        return 0;
    }

    std::unique_ptr<leveldb::DB> db(dbptr);
    leveldb::WriteOptions write_options;
    write_options.sync = true;

    leveldb::WriteBatch batch;

    batch.Put("a1", "a1");
    batch.Put("b2", "b2");
    batch.Put("c3", "c3");
    batch.Put("d4", "d4");
    batch.Put("e5", "e5");
    batch.Put("f6", "f6");
    batch.Put("g7", "g7");
    batch.Put("h8", "h8");
    batch.Delete("key14");

    status = db->Write(write_options, &batch);

    /**
    leveldb::Iterator *iter = db->NewIterator(leveldb::ReadOptions());
    delete iter;
    return 0;
    */
    // db->Put(write_options, "key1", "value1");
    // 使用迭代器的例子
    std::unique_ptr<leveldb::Iterator> iter(db->NewIterator(leveldb::ReadOptions()));
    iter->SeekToFirst();
    while (iter->Valid())
    {
        std::cout << iter->key().ToString() << " " << iter->value().ToString() << std::endl;
        iter->Next();
    }

    // std::unique_ptr <leveldb::Iterator> iter(db->NewIterator(leveldb::ReadOptions()));
    return 0;
}