<#include "/classic/utils/ui.ftl"/>
<@layout>

<div class="row">
    <div class="col-md-4 col-md-offset-4 floating-box">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">请登录</h3>
            </div>
            <div class="panel-body">
                <div id="message"><#include "/classic/inc/action_message.ftl"/></div>
                <form method="POST" action="login" accept-charset="UTF-8">
                    <div class="form-group ">
                        <label class="control-label" for="username">账号</label>
                        <input class="form-control" name="username" type="text" required>
                    </div>
                    <div class="form-group ">
                        <label class="control-label" for="password">密码</label>
                        <input class="form-control" name="password" type="password" required>
                    </div>
                    <div class="form-group ">
                        <label>
                            <input type="checkbox" name="rememberMe" value="1"> 记住登录？
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">
                        登录 Use it
                    </button>
                    <@controls name="register">
                        <hr>
                        <fieldset class="form-group">
                            <div class="alert alert-info">
                                使用以下方法注册或者登录（<a class="forget-password" href="${base}/forgot">忘记密码？</a>）
                            </div>
                            <a class="btn btn-default btn-block" href="${base}/oauth/callback/call_weibo">
                                <i class="fa fa-weibo"></i> 微博帐号登录
                            </a>
                            <a class="btn btn-default btn-block" href="${base}/oauth/callback/call_qq">
                                <i class="fa fa-qq"></i> QQ帐号登录
                            </a>
                            <a class="btn btn-default btn-block" href="${base}/oauth/callback/call_github">
                                <i class="fa fa-github"></i> Github帐号登录
                            </a>
                        </fieldset>
                    </@controls>
                </form>
            </div>
        </div>
    </div>
</div>

</@layout>

