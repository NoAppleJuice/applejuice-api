
<strong>Base URLI: https://pure-inlet-8534.herokuapp.com</stong>

<strong>Create A User</strong>

 <strong>POST</strong>  https://pure-inlet-8534.herokuapp.com/users

Reqest

```json

{

  "user": {
      "email": example@gmail.com
      "password":1234567
  }

}


Response

{
    "user": {
        "id": 12,
        "email": "example@gmail.com",
        "created_at": "2015-03-13T22:53:39.084Z",
        "updated_at": "2015-03-13T22:53:39.084Z",
        "authentication_token": "Fz74h8w69p_yJ3f9dsci"
    }
}

Status 202
```


<h2> Send a Notifcation </h2>

<strong> POST </strong> https://pure-inlet-8534.herokuapp.com/users/:user_id/notifications/notify

Request

```json
{
   "notification": {
   message: Hey there bud
   number: +17708130466
  }
}
```

<h2> Create a Status </h2>
<strong> POST </strong> https://pure-inlet-8534.herokuapp.com/getstatus

Request
```json
{
  "status": {
  "charging": false
  "level": 50
  "lat": 40.689060
  "lng": 74.044636
  }

}
```
 <strong> NOTE </strong> for creating notifications and statuses you must pass an auth_token in the headers
