import pymongo
con = pymongo.MongoClient("mongodb://localhost:27017/") 
db = con['college']
studlist = db['studlist']
dic = [{"name":"jhon","age":21},{"name":"honai","age":22}]
#studlist.insert_many(dic)
# print(con.list_database_names())

# for x in studlist.find({"gender":"female","course":"MCA"}):
#     print(x['name']['fname'],x['name']['lname'],x['mark'])

# for x in studlist.find({"course":"MCA"}).sort('mark',-1).limit(1):
#     print(x)

# for x in studlist.find({"gender":"male","grade":"A+"}):
#     print(x)

# for x in studlist.find({"course":"Mechanical"}).sort('mark',-1).limit(3):
#     print(x)

# for x in studlist.find({"gender":"female","mark":{'$gt':90}}):
#     print(x)

# for x in studlist.find({"mark":{'$gt':80,'$lt':90}}):
#     print(x)

# for x in studlist.find({"name.fname":{"$regex":"^V"}}):
#     print(x)

# for x in studlist.find({"address.city":"Kollam"}):
#     print(x)

# for x in studlist.find({"address.city":{"$nin":["Kollam","Thiruvananthapuram"]}}):
#     print(x)

for x in studlist.find({"address.city":{"$in":["Kollam","Thiruvananthapuram"]}}):
    print(x)