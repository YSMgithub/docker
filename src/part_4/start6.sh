#!/bin/bash

service nginx start
spawn-fcgi -p 8080 mini_server
/bin/bash
