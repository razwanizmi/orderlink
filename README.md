# OrderLink

## Products

### Index

Endpoint: `GET https://orderlink.herokuapp.com/api/products`

**Request**
Content-Type: "application/json"
Body: empty

**Response**
Status: 200
Body:
```
[
  {
    "id": <integer>,
    "name": <string>,
    "details": <string>,
    "price": <decimals>
  }
  ...
]
```

### Show

Endpoint: `GET https://orderlink.herokuapp.com/api/products/:id`

**Request**
Content-Type: "application/json"
Body: empty

**Response**
Status: 204
Body:
```
{
  "id": <integer>,
  "name": <string>,
  "details": <string>,
  "price": <decimals>
}
```

### Create

Endpoint: `POST https://orderlink.herokuapp.com/api/products`

**Request**
Content-Type: "application/json"
Body:
```
{
  "name": <string>,
  "details": <string>,
  "price": <decimals>
}
```

**Response**
Status: 201
Body: empty

### Update

Endpoint: `PUT https://orderlink.herokuapp.com/api/products/:id`

**Request**
Content-Type: "application/json"
Body:
```
{
  "name": <string>,
  "details": <string>,
  "price": <decimals>
}
```

**Response**
Status: 204
Body: empty

### Destroy

Endpoint: `DELETE https://orderlink.herokuapp.com/api/products/:id`

**Request**
Content-Type: "application/json"
Body: empty

**Response**
Status: 204
Body: empty
