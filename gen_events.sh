#!/bin/bash

# uses https://github.com/yields/phony

echo "'{\"name\": \"{{name}}\", \"state\":\"{{state.code}}\", \"product\":\"{{product.name}}\"}'"    \
| phony --max 5 \
| xargs -I {} aws sns publish --topic arn:aws:sns:us-east-1:106715121600:code-kata-object-created --message {}  