<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      .pb-cmnt-container {
          font-family: Lato;
          margin-top: 100px;
      }
  
      .pb-cmnt-textarea {
          resize: none;
          padding: 20px;
          height: 130px;
          width: 100%;
          border: 1px solid #F2F2F2;
      }
  </style>
  
  </head>

  <script src="jquery-3.5.1.min.js"></script>
  <script src="blogsx.js"></script>
  <body>


    <div class="container pb-cmnt-container">
      <div class="row">
          <div class="col-md-6 col-md-offset-3">
            <div id="name">
              <span>Name:</span>
              <input type="text" placeholder="Enter name" id="Name" />
            </div>
      
              <div class="panel panel-info">
                  <div class="panel-body">    
                      <textarea id="Comment" placeholder="Write your comment here!" class="pb-cmnt-textarea"></textarea>
                      <form class="form-inline">
                          
                          <button id="Submit" class="btn btn-primary pull-right" type="button">Add Comment</button>
                          <button id="Edit" class="btn btn-primary pull-right" type="button">Edit</button>
                      </form>
                  </div>
              </div>
          </div>
      </div>
  </div>
  
  </body>
</html>




$(document).ready(function () {
  $("#Submit").click(function () {
    alert("in my function");
    url = "http://localhost:5000/comments";
    var d = new Date();
    var date = d.getFullYear() + "/" + (d.getMonth() + 1) + "/" + d.getDate();
    var name = $("#Name").val();
    console.log(name);

    comment = $("#Comment").val();
    console.log(comment);
    $.ajax({
      url: url,
      type: "POST",
      data: JSON.stringify({
        name: name,
        comment: comment,
        Date: date,
      }),
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      async: false,
      success: function (msg) {
        console.log("New post Added Successfully");
      },
    });
  });


$("#Edit").click(function () {
  var d = new Date();
    var date = d.getFullYear() + "/" + (d.getMonth() + 1) + "/" + d.getDate();
    var name = $("#Name").val();
    console.log(name);

    comment = $("#Comment").val();
    console.log(comment);
    
  alert("in update");
  $.ajax({
    url: "http://localhost:5000/comments/2",
    type: "PUT",
    data: JSON.stringify({
      name: name,
      comment: comment,
      Date: date,
    }),
   

    success: function (data) {
      
      console.log(data)
      console.log("New post Added Successfully");
    },
  });
});
});



  

// $("#Edit").click(function () {
//     alert("in update");
//     $.ajax({
//       url: "http://localhost:5000/comments/2",
//       type: "GET",

//       success: function (x) {
//          console.log(x);
//          var d = new Date();
//          var date = d.getFullYear() + "/" + (d.getMonth() + 1) + "/" + d.getDate();
//          var name = $("#Name").val();
//          console.log(name);
     
//          comment = $("#Comment").val();
//          console.log(comment);
         
//        alert("in update");
//        $.ajax({
//          url: "http://localhost:5000/comments/2",
//          type: "PUT",
//          data: JSON.stringify({
//            name: name,
//            comment: comment,
//            Date: date,
//          }),
        
     
//          success: function (data) {
           
//            console.log(data)
//            console.log("New post Added Successfully");
//          },
//        });
    
         

//       },
//     });
//   });






// for (var i = 0; i < x.length; i++) {
//   var a = x[i].comment;
//   var b = x[i].Date;

//   $("#Comment").append(a + "         " + b);
// }
// console.log("New post Added Successfully");














































{
  "posts": [
    {
      "title": "COMPLETE 1ST FUNCTIONALITY",
      "body": "cvxc",
      "cat": "Skills",
      "Date": "2020/11/4",
      "id": 1
    },
    {
      "title": "COMPLETE 1ST FUNCTIONALITY",
      "body": "dfgbnjmfglmn",
      "cat": "Motivation",
      "Date": "2020/11/4",
      "id": 2
    },
    {
      "title": "COMPLETE 1ST FUNCTIONALITY",
      "body": "",
      "cat": "Skills",
      "Date": "2020/11/4",
      "id": 3
    },
    {
      "title": "bvc",
      "body": "",
      "cat": "Nature",
      "Date": "2020/11/4",
      "id": 4
    },
    {
      "title": "COMPLETE 1ST FUNCTIONALITY",
      "cat": "Motivation",
      "Date": "2020/11/4",
      "id": 5
    },
    {
      "title": "COMPLETE 1ST FUNCTIONALITY",
      "cat": "Nature",
      "Date": "2020/11/4",
      "id": 6
    },
    {
      "title": "",
      "cat": " ",
      "Date": "2020/11/4",
      "id": 7
    },
    {
      "title": "",
      "body": "",
      "cat": " ",
      "Date": "2020/11/4",
      "id": 8
    },
    {
      "title": "",
      "body": "\n       \n        ghgfhb<!-- <div class=\"form-group\"> \n          <label class=\"control-label col-sm-2\" for=\"content\">Post:</label>\n          <div class=\"col-sm-4\">\n            <input style=\"height:200px; width:500px;\" type=\"text\" class=\"form-control\" id=\"content\" placeholder=\"Enter Your Post\" name=\"content\">\n          </div>\n     -->",
      "cat": " ",
      "Date": "2020/11/4",
      "id": 9
    },
    {
      "title": "",
      "body": "cxv",
      "cat": " ",
      "Date": "2020/11/4",
      "id": 10
    },
    {
      "title": "COMPLETE 1ST FUNCTIONALITY",
      "id": 11
    }
  ],
  "comments": [
    {
      "name": "abhhishek",
      "comment": "xcx",
      "Date": "2020/11/7",
      "id": 1
    },
    {
      "{\"name\":\"rishabh\",\"comment\":\"good night\",\"Date\":\"2020/11/7\"}": "",
      "id": 2
    }
  ],
  "profile": {
    "name": "typicode"
  }
}
