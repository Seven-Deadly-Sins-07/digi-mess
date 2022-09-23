const http = require("http");
const fs = require("fs");

const home = fs.readFileSync(`${__dirname}/html/index.html`, "utf-8");
const css = fs.readFileSync(`${__dirname}/css/style.css`, "utf-8");
const cardTemplate = fs.readFileSync(
  `${__dirname}/html/cardTemplate.html`,
  "utf-8"
);

let i = 0;

function replaceTemplate(ele, temp) {
  temp = temp.replace(/{%CARDTITLE%}/g, ele.title);
  temp = temp.replace(/{%IMGSRC%}/g, ele.img);
  temp = temp.replace(/{%CARDSUBTITLE%}/g, ele.subtitle);
  temp = temp.replace(/{%DESCRIPTION%}/g, ele.description);

  return temp;
}

const data = fs.readFileSync(`${__dirname}/data.json`, "utf-8");
const dataObj = JSON.parse(data);

const server = http.createServer((req, res) => {
  res.writeHead(200, {
    "Content-type": "text/html",
  });
  let output = home.replace("/*STYLE*/", css);

  let cardHtml = dataObj
    .map((ele) => replaceTemplate(ele, cardTemplate))
    .join("");

  output = output.replace("{%CARDS%}", cardHtml);
  // console.log(output);
  output = res.end(output);
});

server.listen("80", () => {
  console.log("Server running at port 80");
});
