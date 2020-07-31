const express = require("express");
const router = require("./router");
const app = express();

app.use(router);
app.all("*", function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*"); // 表示任意的源 // res.header("Access-Control-Allow-Origin", "http://www.wtapi.wang"); // 只有这个网址
  res.header(
    "Access-Control-Allow-Headers",
    "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With"
  );
  res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
  res.header("X-Powered-By", "unknown");
  res.header(
    "Content-Type",
    "application/x-www-form-urlencoded; charset=UTF-8"
  );
  next();
});
app.get("/", (req, res) => {
  res.send("你好");
});
app.listen(3700, (err) => {
  if (err) {
    console.log("启动失败" + err);
  }

  console.log("启动成功请访问http://localhost:3700");
});
