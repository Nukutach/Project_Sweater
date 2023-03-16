<#import "parts/common.ftlh" as c>

<@c.page>

<form action="/user" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">User name :</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="username" value="${user.username}">
        </div>
    </div>
    <fieldset class="form-group">
        <div class="row">
            <legend class="col-sm-2 col-form-label pt-0">User role :</legend>
            <div class="col-sm-10">
                <#list roles as role>
                <div class="form-check">
                    <label class="form-check-label"><input type="checkbox" class="form-check-input" name="${role}"
                                                           ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
                </div>
            </#list>
            </div>
        </div>
    </fieldset>
    <input type="hidden" name="userId" value="${user.id}">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit" class="btn btn-primary">Save</button>
</form>
</@c.page>