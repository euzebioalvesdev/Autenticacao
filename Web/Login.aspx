﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Login</title>

    <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>

    <style type="text/css">
        body {
            align-items: center;
            background-color: #000;
            display: flex;
            justify-content: center;
            height: 90vh;
        }

        .form {
            background-color: #15172b;
            border-radius: 20px;
            box-sizing: border-box;
            height: 500px;
            padding: 20px;
            width: 320px;
        }

        .title {
            color: #eee;
            font-family: sans-serif;
            font-size: 36px;
            font-weight: 600;
            margin-top: 30px;
            text-align: center;
        }

        .subtitle {
            color: #eee;
            font-family: sans-serif;
            font-size: 16px;
            font-weight: 600;
            margin-top: 10px;
            text-align: center;
        }

        .input-container {
            height: 50px;
            position: relative;
            width: 100%;
        }

        .ic1 {
            margin-top: 40px;
        }

        .ic2 {
            margin-top: 30px;
        }

        .input {
            background-color: #303245;
            border-radius: 12px;
            border: 0;
            box-sizing: border-box;
            color: #eee;
            font-size: 18px;
            height: 100%;
            outline: 0;
            padding: 4px 20px 0;
            width: 100%;
        }

        .cut {
            background-color: #15172b;
            border-radius: 10px;
            height: 20px;
            left: 20px;
            position: absolute;
            top: -20px;
            transform: translateY(0);
            transition: transform 200ms;
            width: 76px;
        }

        .cut-short {
            width: 50px;
        }

        .input:focus ~ .cut,
        .input:not(:placeholder-shown) ~ .cut {
            transform: translateY(8px);
        }

        .placeholder {
            color: #65657b;
            font-family: sans-serif;
            left: 20px;
            line-height: 14px;
            pointer-events: none;
            position: absolute;
            transform-origin: 0 50%;
            transition: transform 200ms, color 200ms;
            top: 20px;
        }

        .input:focus ~ .placeholder,
        .input:not(:placeholder-shown) ~ .placeholder {
            transform: translateY(-30px) translateX(10px) scale(0.75);
        }

        .input:not(:placeholder-shown) ~ .placeholder {
            color: #808097;
        }

        .input:focus ~ .placeholder {
            color: #dc2f55;
        }

        .submit {
            background-color: #08d;
            border-radius: 12px;
            border: 0;
            box-sizing: border-box;
            color: #eee;
            cursor: pointer;
            font-size: 18px;
            height: 50px;
            margin-top: 38px;
            /*outline: 0;*/
            text-align: center;
            width: 100%;
        }

            .submit:active {
                background-color: #06b;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">


        <div class="container">
            <div class="form">

                <div class="title">LOGIN</div>
                <div class="subtitle">Entre para utilizar o sistema</div>
                <div class="input-container ic1">
                    <asp:TextBox ID="txtLogin" CssClass="input" placeholder=" " runat="server"></asp:TextBox>
                    <%--<input id="firstname" class="input" type="text" placeholder=" " />--%>
                    <div class="cut"></div>
                    <label for="txtLogin" class="placeholder">Login</label>
                </div>
                <div class="input-container ic2">
                    <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="input" placeholder=" " runat="server"></asp:TextBox>
                    <%--<input id="lastname" class="input" type="text" placeholder=" " />--%>
                    <div class="cut"></div>
                    <label for="txtPassword" class="placeholder">Senha</label>
                </div>

                <asp:Button ID="btnLogin" CssClass="submit" runat="server" OnClick="btnLogin_Click" Text="Login" />

                <div class="input-container ic2">
                    <asp:LinkButton ID="btnForgotPassword" CssClass="btn link-danger" runat="server">Recuperar senha</asp:LinkButton>
                    <%--<input id="email" class="input" type="text" placeholder=" " />--%>
                    <div class="cut cut-short"></div>
                    <%--<label for="email" class="placeholder">
                    Email</>--%>
                </div>
                <%--<button type="text" class="submit">submit</button>--%>
            </div>
        </div>

    </form>

</body>
</html>
