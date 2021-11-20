<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <?php linkCSS("fileUpload") ?>
</head>
<body>
  <div class="drag-area">
    <div class="icon">
        <i class="fa fa-cloud-upload" aria-hidden="true"></i>
    </div>
    <span class="header">Drag & Drop to Upload File</span>
    <span>OR</span>
    <button class="browse-file">Browse File</button>
    <input type="file" hidden class="input-image">
  </div>

  <?php linkJS("fileUpload") ?>
</body>
</html>




