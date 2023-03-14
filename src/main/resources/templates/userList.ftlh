<#import "parts/common.ftlh" as c>

<@c.page>

<table class="table">
    <thead>
        <tr class="bg-primary text-light">
            <th>Name</th>
            <th>Role</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <#list users as user>
        <tr>
            <td>${user.username}</td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td><a class="btn btn-outline-primary" href="/user/${user.id}" role="button">edit</a></td>
        </tr>
    </#list>
    </tbody>
</table>
</@c.page>