const express = require("express");
const router = express.Router();
const server = require("./shop");
let url = require("url");
let util = require("util");

// 查询所有商品
router.get("/findAllShop", (req, res) => {
  server.findAllShop((data) => {
    console.log(data);
    res.json(data);
  });
});

module.exports = router;