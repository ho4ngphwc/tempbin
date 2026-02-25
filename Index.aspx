<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WindowsInitialAccess.Index" %>

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

            <i>All uploaded files are keep alive at least 60 minutes.</i>

            <div id="resultSection" class="col-6 mt-4" style="display: none;">

            </div>

            <div class="col-6 mt-4">
                <asp:FileUpload ID="fileInput" runat="server" CssClass="form-control mb-3" />
                <asp:Button ID="uploadButton" runat="server" CssClass="btn btn-primary mb-4" Text="Upload" OnClick="UploadButton_Click" />
            </div>

            <div class="col-6 mt-4">
                <div class="card">
                    <div class="card-header">
                        <b>How to Use</b>
                    </div>
                    <div class="card-body">
                        <ol>
                            <li>Click the "Choose File" button to select a file from your device.</li>
                            <li>Click the "Upload" button to start the upload process.</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="/static/js/bootstrap.bundle.min.js"></script>
</body>

</html>