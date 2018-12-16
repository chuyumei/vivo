const express = require("express");
const pool = require("./pool");
const cors = require("cors")    //引入跨域模块


var app = express();
app.use(express.static(__dirname+"/public"));
app.listen(3000,()=>{
    console.log("服务器创建成功")
});


//解决跨域访问的问题
app.use(cors({
    origin:["http://127.0.0.1:3001","http://localhost:3001"],
    MSCredentials:true
}))


//1.轮播图片
app.get("/imagelist",(req,res)=>{
    var obj = [
   {id:1,img_url:"http://127.0.0.1:3000/img/swiper/9f8d8046653c4e249be5e129b7d6b77c.webp.jpg"},
   {id:2,img_url:"http://127.0.0.1:3000/img/swiper/e99c2a5d2b1343ee8b7ac44c0f5d1c11.webp.jpg"},
   {id:3,img_url:"http://127.0.0.1:3000/img/swiper/69e4b6a7-af19-4ebd-8824-544167456f28.webp.jpg"},
  ];
    res.send(obj)
  });


2//首页商品列表
app.get("/cakelists",(req,res)=>{
  var sql="SELECT * FROM cakelists";
  pool.query(sql,[],(err,result)=>{
    if(err) throw(err);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.send()
  });  
});
2.//商品详情
app.get("/cakelists2",(req,res)=>{
  var id = req.query.id;
  var sql="SELECT * FROM cakelists where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw(err);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.send()
  });  
});


2.//商品详细信息
//[id;title;now;old;商号]
//参数id
app.get("/cakedetails",(req,res)=>{
  var id = req.query.id;
  var sql="SELECT id,title,price,i_mg,taste,material,person,storage FROM cakelists where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw(err)
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.send()
  }); 
});

2.//商品详细信息——大图片
app.get("/getLimg",(req,res)=>{
  var id = req.query.id;
  var sql="SELECT id,img_l FROM cakeLimg where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw(err)
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.send()
  }); 
});


3.//功能七:购物车数据列表    
//组件发送ajax请求获取并显示数据
app.get("/shopCart",(req,res)=>{
var obj = [];
obj.push({id:1,title:"华为p10",price:3999,count:2})
obj.push({id:2,title:"华为p11",price:4999,count:1})
obj.push({id:3,title:"华为p12",price:5999,count:1})
res.send(obj);
})

4.//加入购物车
app.get("/addCartTo",(req,res)=>{
  var pid=req.query.pid;
  var count=req.query.count;
  var reg=/^[0-9]{1,}$/
  if(!reg.test(pid)){
    res.send({code:-1,msg:"商品编号有误"})
    return;
  }
  if(!reg.test(count)){
    res.send({code:-2,msg:"商品数量有误"})
    return;
  }
  res.send({code:1,msg:"添加成功"})
})

5.//功能四:用户发表评论
const qs = require("querystring");
app.post("/addComment",(req,res)=>{
   req.on("data",(buf)=>{
     var str = buf.toString();  
     var obj = JSON.parse(str); 
     var cmsg = obj.cmsg;         
     var cid = parseInt(obj.cid);
     var sql = "INSERT INTO xz_comment(content,user_name,ctime,nid) VALUES(?,'匿名',now(),?)";
     pool.query(sql,[cmsg,cid],(err,result)=>{
       if(err)throw err;
       res.send({code:1,msg:"添加成功"});
     })
   })
})


//功能二:分页显示:新闻分页
app.get("/newslist6",(req,res)=>{
  //1:参数  当前页码  页大小(一页显示几行数据)
  var pno = req.query.pno;            //2
  var pageSize = req.query.pageSize;  //5
  //2:sql
  //2.1:查找总记录数->转换总页数  15->3
  var sql = "SELECT count(id) as c FROM xz_news";
  var obj = {};      //保存发送客户端数据
  var progress = 0;  //进度
  pool.query(sql,(err,result)=>{
      if(err)throw err;
      var c = Math.ceil(result[0].c/pageSize);
      obj.pageCount = c;
      progress+=50;
      if(progress==100){
        res.send(obj);
      }
  });
  //2.2:查找当前页内容           中间5行
  var sql = " SELECT id,title,img_url,ctime,point";
     sql += " FROM xz_news";
     sql += " LIMIT ?,?";
  var offset = parseInt((pno-1)*pageSize);   
  //计算分页偏移量
  pageSize = parseInt(pageSize)
  pool.query(sql,[offset,pageSize],(err,result)=>{
      if(err)throw err;
      //console.log(result);
      obj.data = result;
      progress+=50;
      if(progress==100){
        res.send(obj);
      }
  })
  //3:结果格式
});


/**旅游网 */

2//首页商品列表
app.get("/traval2",(req,res)=>{
  var sql="SELECT * FROM travelt";
  pool.query(sql,[],(err,result)=>{
    if(err) throw(err);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.send()
  });  
});

2//首页商品列表
app.get("/travalt2",(req,res)=>{
  var sql="SELECT * FROM travelt2";
  pool.query(sql,[],(err,result)=>{
    if(err) throw(err);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.send()
  });  
});
2.//商品详情
app.get("/traval1",(req,res)=>{
  var id = req.query.id;
  var sql="SELECT * FROM travelt where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw(err);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.send()
  });  
});
2.//商品详情
app.get("/travaltf",(req,res)=>{
  var fid = req.query.fid;
  var sql="SELECT * FROM travelt2 where fid=?";
  pool.query(sql,[fid],(err,result)=>{
    if(err) throw(err);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.send()
  });  
});
2.//商品详情
app.get("/travalt3",(req,res)=>{
  var id = req.query.id;
  var sql="SELECT * FROM travelt2 where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw(err);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.send()
  });  
});
2.//商品详情
app.get("/travalt4",(req,res)=>{
  var id = req.query.id;
  var sql="SELECT * FROM travelt2 where fid=( select fid from travelt2 where id=? ) ";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw(err);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.send()
  });  
});


2.//商品详细信息
//[id;title;now;old;商号]
//参数id
app.get("/traval3",(req,res)=>{
  var id = req.query.id;
  var sql="SELECT * FROM travelp where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw(err)
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.send()
  }); 
});