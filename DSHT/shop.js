const mysql = require("mysql");
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "135789",
  database: "shop",
});
connection.connect();

function result(resultCode, message, data) {
  return {
    resultCode: resultCode,
    message: message,
    data: data,
  };
}
exports.findAllShop = function (callback) {
  let sql =
    "select shop_type,shop_id,shop_name,shop_img,shop_price,shop_xl,shop_sy,shop_sum from shop";
  connection.query(sql, (err, data) => {
    if (err) {
      callback(err);
    }
    callback(result(0, "查询成功", data));
  });
};
