<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="form-group">
        <label class="col-sm-2 col-form-label"> User name :</label>
        <div class="col-sm-6">
        <input type="text" name="username" class="form-control" placeholder="User name" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 col-form-label"> Password:</label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control" placeholder="Password" />
        </div>
    </div>
    <#if isRegisterForm>
    <div class="form-group">
        <label class="col-sm-2 col-form-label"> Email:</label>
        <div class="col-sm-6">
            <input type="email" name="email" class="form-control" placeholder="name@example.com" />
        </div>
    </div>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit" class="btn btn-primary mr-3">
        <#if isRegisterForm>Create<#else>Sign In</#if>
    </button>
    <#if !isRegisterForm>
    <a href="/registration">Add new user</a>
    </#if>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit" class="btn btn-primary">Sign Out</button>
</form>
</#macro>