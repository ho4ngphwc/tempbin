<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="File.aspx.cs" Inherits="WindowsInitialAccess.File" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>tempbin - Temporary File Hosting</title>
    <link rel="icon" href="/static/img/logo.png" type="image/x-icon"/>
    <link href="/static/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        body {
            background-color: #e6f2ff;
        }

        a {
            text-decoration: none;
            color: #1D242B;
        }

        .main-color {
            color: #0077C0;
        }

        .secondary-color {
            color: #1D242B;
        }
        .btn-primary {
            background-color: #0077C0;
            border-color: #0077C0;
        }
    </style>
    <script>
        function htmlEncode(str){
            return String(str).replace(/[^\w. ]/gi, function(c){
                return '&#'+c.charCodeAt(0)+';';
            });
        }
        function showResult(url, size, name, createdAt) {
            
            document.getElementById('result1').innerHTML = '<b>File Name:</b> ' + htmlEncode(name);
            document.getElementById('result3').innerHTML = '<b>URL:</b> <a target="_blank" href="' + url + '">' + htmlEncode(url) + '</a>';
            document.getElementById('result2').innerHTML = '<b>Size:</b> ' + htmlEncode(size) + ' KB';
            document.getElementById('result4').innerHTML = '<b>Created At:</b> ' + htmlEncode(createdAt);
            document.getElementById('result').style.display = 'block';
            document.getElementById('download').href = url;
        }
        function showError(errorMessage) {
            document.getElementById('resultSection').innerHTML = '<div class="alert alert-danger" role="alert">' + errorMessage + '</div>';
            document.getElementById('resultSection').style.display = 'block';
            setTimeout(() => {
                document.getElementById('resultSection').style.display = 'none';
            }, 2000);
        }
    </script>
</head>

<body>
    <form id="uploadForm" runat="server">
        <div class="container mt-5">
            <a href="/" class="d-flex">
                <img src="/static/img/logo.png" alt="tempbin logo" width="48" height="48"/>
                <h1 class="ms-4 main-color">tempbin</h1>
            </a>

            <h3 class="mb-4 secondary-color">Temporary File Hosting</h3>

            <div id="resultSection" class="col-6 mt-4" style="display: none;">

            </div>

            <div class="col-6 mt-4" id="result" style="display: none;">
                <p id='result1' class="text-monospace"></p>
                <p id='result2' class="text-monospace"></p>
                <p id='result3' class="text-monospace"></p>
                <p id='result4' class="text-monospace"></p>
            </div>
            <div class="col-6 mt-4 d-flex">
                <a id='download' href="#" class="btn btn-primary">Download</a>
        </div>
    </form>

    <script src="/static/js/bootstrap.bundle.min.js"></script>
</body>

</html>