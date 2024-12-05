<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="../../../public/css/login.css">
</head>

<body>
<div class="container">
    <div class="image-container">
        <img src="../../../public/img/login/background.jpeg" alt="Background">
    </div>
    <div class="login-container">
        <h1>LOGIN PAGE</h1>
        <form action="../../../app/controllers/proses_login.php" method="POST">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="example@domain.com" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="***********" required>
            </div>
            <button type="submit" class="login-btn">LOGIN</button>
        </form>
        <div class="logo">
            <img src="../../../public/img/login/poltek.jpg" alt="Logo 1">
            <img src="../../../public/img/login/jti.png" alt="Logo 2">
        </div>
    </div>
</div>
</body>

</html>
