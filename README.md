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
    "imageUrl": <string>,
    "price": <decimals>
  }
  ...
]
```
