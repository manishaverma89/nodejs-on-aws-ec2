const express = require("express");
const app = express();
const port = 3000;

app.get("/", function (req, res) {
  res.send(
    "<h1>Success!!</h1> <p> Hello,Welcome here to test ci/cd pipeline using nodejs application on aws-ec2 </p> "
  );
});

app.get("/price", function (req, res) {
  res.send([
      {
          totalProducts: 2
      },
    {
      productId: 101,
      price: 95,
    },
    {
      productId: 102,
      price: 45,
    },
  ]);
});

app.listen(port ,function(){
  console.log("App is up and running at port: " +port);
})